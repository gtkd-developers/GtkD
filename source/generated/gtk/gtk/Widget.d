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


module gtk.Widget;

private import cairo.FontOption;
private import gdk.Clipboard;
private import gdk.Cursor;
private import gdk.Display;
private import gdk.FrameClock;
private import gio.ActionGroupIF;
private import gio.ListModelIF;
private import glib.ListG;
private import glib.MemorySlice;
private import glib.Str;
private import glib.Variant;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import graphene.Matrix;
private import graphene.Point;
private import graphene.Rect;
private import gsk.Transform;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.EventController;
private import gtk.LayoutManager;
private import gtk.NativeIF;
private import gtk.Requisition;
private import gtk.RootIF;
private import gtk.Settings;
private import gtk.Snapshot;
private import gtk.StyleContext;
private import gtk.Tooltip;
private import gtk.c.functions;
public  import gtk.c.types;
private import pango.PgContext;
private import pango.PgFontMap;
private import pango.PgLayout;
private import std.algorithm;


/**
 * The base class for all widgets.
 * 
 * `GtkWidget` is the base class all widgets in GTK derive from. It manages the
 * widget lifecycle, layout, states and style.
 * 
 * ### Height-for-width Geometry Management
 * 
 * GTK uses a height-for-width (and width-for-height) geometry management
 * system. Height-for-width means that a widget can change how much
 * vertical space it needs, depending on the amount of horizontal space
 * that it is given (and similar for width-for-height). The most common
 * example is a label that reflows to fill up the available width, wraps
 * to fewer lines, and therefore needs less height.
 * 
 * Height-for-width geometry management is implemented in GTK by way
 * of two virtual methods:
 * 
 * - [vfunc@Gtk.Widget.get_request_mode]
 * - [vfunc@Gtk.Widget.measure]
 * 
 * There are some important things to keep in mind when implementing
 * height-for-width and when using it in widget implementations.
 * 
 * If you implement a direct `GtkWidget` subclass that supports
 * height-for-width or width-for-height geometry management for itself
 * or its child widgets, the [vfunc@Gtk.Widget.get_request_mode] virtual
 * function must be implemented as well and return the widget's preferred
 * request mode. The default implementation of this virtual function
 * returns %GTK_SIZE_REQUEST_CONSTANT_SIZE, which means that the widget will
 * only ever get -1 passed as the for_size value to its
 * [vfunc@Gtk.Widget.measure] implementation.
 * 
 * The geometry management system will query a widget hierarchy in
 * only one orientation at a time. When widgets are initially queried
 * for their minimum sizes it is generally done in two initial passes
 * in the [enum@Gtk.SizeRequestMode] chosen by the toplevel.
 * 
 * For example, when queried in the normal %GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH mode:
 * 
 * First, the default minimum and natural width for each widget
 * in the interface will be computed using [id@gtk_widget_measure] with an
 * orientation of %GTK_ORIENTATION_HORIZONTAL and a for_size of -1.
 * Because the preferred widths for each widget depend on the preferred
 * widths of their children, this information propagates up the hierarchy,
 * and finally a minimum and natural width is determined for the entire
 * toplevel. Next, the toplevel will use the minimum width to query for the
 * minimum height contextual to that width using [id@gtk_widget_measure] with an
 * orientation of %GTK_ORIENTATION_VERTICAL and a for_size of the just computed
 * width. This will also be a highly recursive operation. The minimum height
 * for the minimum width is normally used to set the minimum size constraint
 * on the toplevel.
 * 
 * After the toplevel window has initially requested its size in both
 * dimensions it can go on to allocate itself a reasonable size (or a size
 * previously specified with [method@Gtk.Window.set_default_size]). During the
 * recursive allocation process it’s important to note that request cycles
 * will be recursively executed while widgets allocate their children.
 * Each widget, once allocated a size, will go on to first share the
 * space in one orientation among its children and then request each child's
 * height for its target allocated width or its width for allocated height,
 * depending. In this way a `GtkWidget` will typically be requested its size
 * a number of times before actually being allocated a size. The size a
 * widget is finally allocated can of course differ from the size it has
 * requested. For this reason, `GtkWidget` caches a  small number of results
 * to avoid re-querying for the same sizes in one allocation cycle.
 * 
 * If a widget does move content around to intelligently use up the
 * allocated size then it must support the request in both
 * `GtkSizeRequestMode`s even if the widget in question only
 * trades sizes in a single orientation.
 * 
 * For instance, a [class@Gtk.Label] that does height-for-width word wrapping
 * will not expect to have [vfunc@Gtk.Widget.measure] with an orientation of
 * %GTK_ORIENTATION_VERTICAL called because that call is specific to a
 * width-for-height request. In this case the label must return the height
 * required for its own minimum possible width. By following this rule any
 * widget that handles height-for-width or width-for-height requests will
 * always be allocated at least enough space to fit its own content.
 * 
 * Here are some examples of how a %GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH widget
 * generally deals with width-for-height requests:
 * 
 * ```c
 * static void
 * foo_widget_measure (GtkWidget      *widget,
 * GtkOrientation  orientation,
 * int             for_size,
 * int            *minimum_size,
 * int            *natural_size,
 * int            *minimum_baseline,
 * int            *natural_baseline)
 * {
 * if (orientation == GTK_ORIENTATION_HORIZONTAL)
 * {
 * // Calculate minimum and natural width
 * }
 * else // VERTICAL
 * {
 * if (i_am_in_height_for_width_mode)
 * {
 * int min_width, dummy;
 * 
 * // First, get the minimum width of our widget
 * GTK_WIDGET_GET_CLASS (widget)->measure (widget, GTK_ORIENTATION_HORIZONTAL, -1,
 * &min_width, &dummy, &dummy, &dummy);
 * 
 * // Now use the minimum width to retrieve the minimum and natural height to display
 * // that width.
 * GTK_WIDGET_GET_CLASS (widget)->measure (widget, GTK_ORIENTATION_VERTICAL, min_width,
 * minimum_size, natural_size, &dummy, &dummy);
 * }
 * else
 * {
 * // ... some widgets do both.
 * }
 * }
 * }
 * ```
 * 
 * Often a widget needs to get its own request during size request or
 * allocation. For example, when computing height it may need to also
 * compute width. Or when deciding how to use an allocation, the widget
 * may need to know its natural size. In these cases, the widget should
 * be careful to call its virtual methods directly, like in the code
 * example above.
 * 
 * It will not work to use the wrapper function [method@Gtk.Widget.measure]
 * inside your own [vfunc@Gtk.Widget.size_allocate] implementation.
 * These return a request adjusted by [class@Gtk.SizeGroup], the widget's
 * align and expand flags, as well as its CSS style.
 * 
 * If a widget used the wrappers inside its virtual method implementations,
 * then the adjustments (such as widget margins) would be applied
 * twice. GTK therefore does not allow this and will warn if you try
 * to do it.
 * 
 * Of course if you are getting the size request for another widget, such
 * as a child widget, you must use [id@gtk_widget_measure]; otherwise, you
 * would not properly consider widget margins, [class@Gtk.SizeGroup], and
 * so forth.
 * 
 * GTK also supports baseline vertical alignment of widgets. This
 * means that widgets are positioned such that the typographical baseline of
 * widgets in the same row are aligned. This happens if a widget supports
 * baselines, has a vertical alignment of %GTK_ALIGN_BASELINE, and is inside
 * a widget that supports baselines and has a natural “row” that it aligns to
 * the baseline, or a baseline assigned to it by the grandparent.
 * 
 * Baseline alignment support for a widget is also done by the
 * [vfunc@Gtk.Widget.measure] virtual function. It allows you to report
 * both a minimum and natural size.
 * 
 * If a widget ends up baseline aligned it will be allocated all the space in
 * the parent as if it was %GTK_ALIGN_FILL, but the selected baseline can be
 * found via [id@gtk_widget_get_allocated_baseline]. If the baseline has a
 * value other than -1 you need to align the widget such that the baseline
 * appears at the position.
 * 
 * ### GtkWidget as GtkBuildable
 * 
 * The `GtkWidget` implementation of the `GtkBuildable` interface
 * supports various custom elements to specify additional aspects of widgets
 * that are not directly expressed as properties.
 * 
 * If the widget uses a [class@Gtk.LayoutManager], `GtkWidget` supports
 * a custom `<layout>` element, used to define layout properties:
 * 
 * ```xml
 * <object class="GtkGrid" id="my_grid">
 * <child>
 * <object class="GtkLabel" id="label1">
 * <property name="label">Description</property>
 * <layout>
 * <property name="column">0</property>
 * <property name="row">0</property>
 * <property name="row-span">1</property>
 * <property name="column-span">1</property>
 * </layout>
 * </object>
 * </child>
 * <child>
 * <object class="GtkEntry" id="description_entry">
 * <layout>
 * <property name="column">1</property>
 * <property name="row">0</property>
 * <property name="row-span">1</property>
 * <property name="column-span">1</property>
 * </layout>
 * </object>
 * </child>
 * </object>
 * ```
 * 
 * `GtkWidget` allows style information such as style classes to
 * be associated with widgets, using the custom `<style>` element:
 * 
 * ```xml
 * <object class="GtkButton" id="button1">
 * <style>
 * <class name="my-special-button-class"/>
 * <class name="dark-button"/>
 * </style>
 * </object>
 * ```
 * 
 * `GtkWidget` allows defining accessibility information, such as properties,
 * relations, and states, using the custom `<accessibility>` element:
 * 
 * ```xml
 * <object class="GtkButton" id="button1">
 * <accessibility>
 * <property name="label">Download</property>
 * <relation name="labelled-by">label1</relation>
 * </accessibility>
 * </object>
 * ```
 * 
 * ### Building composite widgets from template XML
 * 
 * `GtkWidget `exposes some facilities to automate the procedure
 * of creating composite widgets using "templates".
 * 
 * To create composite widgets with `GtkBuilder` XML, one must associate
 * the interface description with the widget class at class initialization
 * time using [method@Gtk.WidgetClass.set_template].
 * 
 * The interface description semantics expected in composite template descriptions
 * is slightly different from regular [class@Gtk.Builder] XML.
 * 
 * Unlike regular interface descriptions, [method@Gtk.WidgetClass.set_template] will
 * expect a `<template>` tag as a direct child of the toplevel `<interface>`
 * tag. The `<template>` tag must specify the “class” attribute which must be
 * the type name of the widget. Optionally, the “parent” attribute may be
 * specified to specify the direct parent type of the widget type, this is
 * ignored by `GtkBuilder` but required for UI design tools like
 * [Glade](https://glade.gnome.org/) to introspect what kind of properties and
 * internal children exist for a given type when the actual type does not exist.
 * 
 * The XML which is contained inside the `<template>` tag behaves as if it were
 * added to the `<object>` tag defining the widget itself. You may set properties
 * on a widget by inserting `<property>` tags into the `<template>` tag, and also
 * add `<child>` tags to add children and extend a widget in the normal way you
 * would with `<object>` tags.
 * 
 * Additionally, `<object>` tags can also be added before and after the initial
 * `<template>` tag in the normal way, allowing one to define auxiliary objects
 * which might be referenced by other widgets declared as children of the
 * `<template>` tag.
 * 
 * An example of a template definition:
 * 
 * ```xml
 * <interface>
 * <template class="FooWidget" parent="GtkBox">
 * <property name="orientation">horizontal</property>
 * <property name="spacing">4</property>
 * <child>
 * <object class="GtkButton" id="hello_button">
 * <property name="label">Hello World</property>
 * <signal name="clicked" handler="hello_button_clicked" object="FooWidget" swapped="yes"/>
 * </object>
 * </child>
 * <child>
 * <object class="GtkButton" id="goodbye_button">
 * <property name="label">Goodbye World</property>
 * </object>
 * </child>
 * </template>
 * </interface>
 * ```
 * 
 * Typically, you'll place the template fragment into a file that is
 * bundled with your project, using `GResource`. In order to load the
 * template, you need to call [method@Gtk.WidgetClass.set_template_from_resource]
 * from the class initialization of your `GtkWidget` type:
 * 
 * ```c
 * static void
 * foo_widget_class_init (FooWidgetClass *klass)
 * {
 * // ...
 * 
 * gtk_widget_class_set_template_from_resource (GTK_WIDGET_CLASS (klass),
 * "/com/example/ui/foowidget.ui");
 * }
 * ```
 * 
 * You will also need to call [method@Gtk.Widget.init_template] from the
 * instance initialization function:
 * 
 * ```c
 * static void
 * foo_widget_init (FooWidget *self)
 * {
 * // ...
 * gtk_widget_init_template (GTK_WIDGET (self));
 * }
 * ```
 * 
 * You can access widgets defined in the template using the
 * [id@gtk_widget_get_template_child] function, but you will typically declare
 * a pointer in the instance private data structure of your type using the same
 * name as the widget in the template definition, and call
 * [method@Gtk.WidgetClass.bind_template_child_full] (or one of its wrapper macros
 * [func@Gtk.widget_class_bind_template_child] and [func@Gtk.widget_class_bind_template_child_private])
 * with that name, e.g.
 * 
 * ```c
 * typedef struct {
 * GtkWidget *hello_button;
 * GtkWidget *goodbye_button;
 * } FooWidgetPrivate;
 * 
 * G_DEFINE_TYPE_WITH_PRIVATE (FooWidget, foo_widget, GTK_TYPE_BOX)
 * 
 * static void
 * foo_widget_class_init (FooWidgetClass *klass)
 * {
 * // ...
 * gtk_widget_class_set_template_from_resource (GTK_WIDGET_CLASS (klass),
 * "/com/example/ui/foowidget.ui");
 * gtk_widget_class_bind_template_child_private (GTK_WIDGET_CLASS (klass),
 * FooWidget, hello_button);
 * gtk_widget_class_bind_template_child_private (GTK_WIDGET_CLASS (klass),
 * FooWidget, goodbye_button);
 * }
 * 
 * static void
 * foo_widget_init (FooWidget *widget)
 * {
 * 
 * }
 * ```
 * 
 * You can also use [method@Gtk.WidgetClass.bind_template_callback_full] (or
 * is wrapper macro [func@Gtk.widget_class_bind_template_callback]) to connect
 * a signal callback defined in the template with a function visible in the
 * scope of the class, e.g.
 * 
 * ```c
 * // the signal handler has the instance and user data swapped
 * // because of the swapped="yes" attribute in the template XML
 * static void
 * hello_button_clicked (FooWidget *self,
 * GtkButton *button)
 * {
 * g_print ("Hello, world!\n");
 * }
 * 
 * static void
 * foo_widget_class_init (FooWidgetClass *klass)
 * {
 * // ...
 * gtk_widget_class_set_template_from_resource (GTK_WIDGET_CLASS (klass),
 * "/com/example/ui/foowidget.ui");
 * gtk_widget_class_bind_template_callback (GTK_WIDGET_CLASS (klass), hello_button_clicked);
 * }
 * ```
 */
public class Widget : ObjectG, AccessibleIF, BuildableIF, ConstraintTargetIF
{
	/** the main Gtk struct */
	protected GtkWidget* gtkWidget;

	/** Get the main Gtk struct */
	public GtkWidget* getWidgetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkWidget;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkWidget;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkWidget* gtkWidget, bool ownedRef = false)
	{
		this.gtkWidget = gtkWidget;
		super(cast(GObject*)gtkWidget, ownedRef);
	}

	// add the Accessible capabilities
	mixin AccessibleT!(GtkWidget);

	// add the Buildable capabilities
	mixin BuildableT!(GtkWidget);

	// add the ConstraintTarget capabilities
	mixin ConstraintTargetT!(GtkWidget);


	/** */
	public static GType getType()
	{
		return gtk_widget_get_type();
	}

	/**
	 * Obtains the current default reading direction.
	 *
	 * See [func@Gtk.Widget.set_default_direction].
	 *
	 * Returns: the current default direction.
	 */
	public static GtkTextDirection getDefaultDirection()
	{
		return gtk_widget_get_default_direction();
	}

	/**
	 * Sets the default reading direction for widgets.
	 *
	 * See [method@Gtk.Widget.set_direction].
	 *
	 * Params:
	 *     dir = the new default direction. This cannot be %GTK_TEXT_DIR_NONE.
	 */
	public static void setDefaultDirection(GtkTextDirection dir)
	{
		gtk_widget_set_default_direction(dir);
	}

	/**
	 * Enable or disable an action installed with
	 * gtk_widget_class_install_action().
	 *
	 * Params:
	 *     actionName = action name, such as "clipboard.paste"
	 *     enabled = whether the action is now enabled
	 */
	public void actionSetEnabled(string actionName, bool enabled)
	{
		gtk_widget_action_set_enabled(gtkWidget, Str.toStringz(actionName), enabled);
	}

	/**
	 * For widgets that can be “activated” (buttons, menu items, etc.),
	 * this function activates them.
	 *
	 * The activation will emit the signal set using
	 * [method@Gtk.WidgetClass.set_activate_signal] during class initialization.
	 *
	 * Activation is what happens when you press <kbd>Enter</kbd>
	 * on a widget during key navigation.
	 *
	 * If you wish to handle the activation keybinding yourself, it is
	 * recommended to use [method@Gtk.WidgetClass.add_shortcut] with an action
	 * created with [ctor@Gtk.SignalAction.new].
	 *
	 * If @widget isn't activatable, the function returns %FALSE.
	 *
	 * Returns: %TRUE if the widget was activatable
	 */
	public bool activate()
	{
		return gtk_widget_activate(gtkWidget) != 0;
	}

	/**
	 * Looks up the action in the action groups associated with
	 * @widget and its ancestors, and activates it.
	 *
	 * If the action is in an action group added with
	 * [method@Gtk.Widget.insert_action_group], the @name is expected
	 * to be prefixed with the prefix that was used when the group was
	 * inserted.
	 *
	 * The arguments must match the actions expected parameter type,
	 * as returned by `g_action_get_parameter_type()`.
	 *
	 * Params:
	 *     name = the name of the action to activate
	 *     args = parameters to use
	 *
	 * Returns: %TRUE if the action was activated, %FALSE if the
	 *     action does not exist.
	 */
	public bool activateActionVariant(string name, Variant args)
	{
		return gtk_widget_activate_action_variant(gtkWidget, Str.toStringz(name), (args is null) ? null : args.getVariantStruct()) != 0;
	}

	/**
	 * Activates the `default.activate` action from @widget.
	 */
	public void activateDefault()
	{
		gtk_widget_activate_default(gtkWidget);
	}

	/**
	 * Adds @controller to @widget so that it will receive events.
	 *
	 * You will usually want to call this function right after
	 * creating any kind of [class@Gtk.EventController].
	 *
	 * Params:
	 *     controller = a `GtkEventController` that hasn't been
	 *         added to a widget yet
	 */
	public void addController(EventController controller)
	{
		gtk_widget_add_controller(gtkWidget, (controller is null) ? null : controller.getEventControllerStruct());
	}

	/**
	 * Adds a style class to @widget.
	 *
	 * After calling this function, the widgets style will match
	 * for @css_class, according to CSS matching rules.
	 *
	 * Use [method@Gtk.Widget.remove_css_class] to remove the
	 * style again.
	 *
	 * Params:
	 *     cssClass = The style class to add to @widget, without
	 *         the leading '.' used for notation of style classes
	 */
	public void addCssClass(string cssClass)
	{
		gtk_widget_add_css_class(gtkWidget, Str.toStringz(cssClass));
	}

	/**
	 * Adds a widget to the list of mnemonic labels for this widget.
	 *
	 * See [method@Gtk.Widget.list_mnemonic_labels]. Note the
	 * list of mnemonic labels for the widget is cleared when the
	 * widget is destroyed, so the caller must make sure to update
	 * its internal state at this point as well.
	 *
	 * Params:
	 *     label = a `GtkWidget` that acts as a mnemonic label for @widget
	 */
	public void addMnemonicLabel(Widget label)
	{
		gtk_widget_add_mnemonic_label(gtkWidget, (label is null) ? null : label.getWidgetStruct());
	}

	/**
	 * Queues an animation frame update and adds a callback to be called
	 * before each frame.
	 *
	 * Until the tick callback is removed, it will be called frequently
	 * (usually at the frame rate of the output device or as quickly as
	 * the application can be repainted, whichever is slower). For this
	 * reason, is most suitable for handling graphics that change every
	 * frame or every few frames. The tick callback does not automatically
	 * imply a relayout or repaint. If you want a repaint or relayout, and
	 * aren’t changing widget properties that would trigger that (for example,
	 * changing the text of a `GtkLabel`), then you will have to call
	 * [method@Gtk.Widget.queue_resize] or [method@Gtk.Widget.queue_draw]
	 * yourself.
	 *
	 * [method@Gdk.FrameClock.get_frame_time] should generally be used
	 * for timing continuous animations and
	 * [method@Gdk.FrameTimings.get_predicted_presentation_time] if you are
	 * trying to display isolated frames at particular times.
	 *
	 * This is a more convenient alternative to connecting directly to the
	 * [signal@Gdk.FrameClock::update] signal of `GdkFrameClock`, since you
	 * don't have to worry about when a `GdkFrameClock` is assigned to a widget.
	 *
	 * Params:
	 *     callback = function to call for updating animations
	 *     userData = data to pass to @callback
	 *     notify = function to call to free @user_data when the callback is removed.
	 *
	 * Returns: an id for the connection of this callback. Remove the callback
	 *     by passing the id returned from this function to
	 *     [method@Gtk.Widget.remove_tick_callback]
	 */
	public uint addTickCallback(GtkTickCallback callback, void* userData, GDestroyNotify notify)
	{
		return gtk_widget_add_tick_callback(gtkWidget, callback, userData, notify);
	}

	/**
	 * This function is only used by `GtkWidget` subclasses, to
	 * assign a size, position and (optionally) baseline to their
	 * child widgets.
	 *
	 * In this function, the allocation and baseline may be adjusted.
	 * The given allocation will be forced to be bigger than the
	 * widget's minimum size, as well as at least 0×0 in size.
	 *
	 * For a version that does not take a transform, see
	 * [method@Gtk.Widget.size_allocate].
	 *
	 * Params:
	 *     width = New width of @widget
	 *     height = New height of @widget
	 *     baseline = New baseline of @widget, or -1
	 *     transform = Transformation to be applied to @widget
	 */
	public void allocate(int width, int height, int baseline, Transform transform)
	{
		gtk_widget_allocate(gtkWidget, width, height, baseline, (transform is null) ? null : transform.getTransformStruct(true));
	}

	/**
	 * Called by widgets as the user moves around the window using
	 * keyboard shortcuts.
	 *
	 * The @direction argument indicates what kind of motion is taking place (up,
	 * down, left, right, tab forward, tab backward).
	 *
	 * This function calls the [vfunc@Gtk.Widget.focus] virtual function; widgets
	 * can override the virtual function in order to implement appropriate focus
	 * behavior.
	 *
	 * The default `focus()` virtual function for a widget should return `TRUE` if
	 * moving in @direction left the focus on a focusable location inside that
	 * widget, and `FALSE` if moving in @direction moved the focus outside the
	 * widget. When returning `TRUE`, widgets normallycall [method@Gtk.Widget.grab_focus]
	 * to place the focus accordingly; when returning `FALSE`, they don’t modify
	 * the current focus location.
	 *
	 * This function is used by custom widget implementations; if you're
	 * writing an app, you’d use [method@Gtk.Widget.grab_focus] to move
	 * the focus to a particular widget.
	 *
	 * Params:
	 *     direction = direction of focus movement
	 *
	 * Returns: %TRUE if focus ended up inside @widget
	 */
	public bool childFocus(GtkDirectionType direction)
	{
		return gtk_widget_child_focus(gtkWidget, direction) != 0;
	}

	/**
	 * Computes the bounds for @widget in the coordinate space of @target.
	 *
	 * FIXME: Explain what "bounds" are.
	 *
	 * If the operation is successful, %TRUE is returned. If @widget has no
	 * bounds or the bounds cannot be expressed in @target's coordinate space
	 * (for example if both widgets are in different windows), %FALSE is
	 * returned and @bounds is set to the zero rectangle.
	 *
	 * It is valid for @widget and @target to be the same widget.
	 *
	 * Params:
	 *     target = the `GtkWidget`
	 *     outBounds = the rectangle taking the bounds
	 *
	 * Returns: %TRUE if the bounds could be computed
	 */
	public bool computeBounds(Widget target, out Rect outBounds)
	{
		graphene_rect_t* outoutBounds = sliceNew!graphene_rect_t();

		auto __p = gtk_widget_compute_bounds(gtkWidget, (target is null) ? null : target.getWidgetStruct(), outoutBounds) != 0;

		outBounds = ObjectG.getDObject!(Rect)(outoutBounds, true);

		return __p;
	}

	/**
	 * Computes whether a container should give this widget
	 * extra space when possible.
	 *
	 * Containers should check this, rather than looking at
	 * [method@Gtk.Widget.get_hexpand] or [method@Gtk.Widget.get_vexpand].
	 *
	 * This function already checks whether the widget is visible, so
	 * visibility does not need to be checked separately. Non-visible
	 * widgets are not expanded.
	 *
	 * The computed expand value uses either the expand setting explicitly
	 * set on the widget itself, or, if none has been explicitly set,
	 * the widget may expand if some of its children do.
	 *
	 * Params:
	 *     orientation = expand direction
	 *
	 * Returns: whether widget tree rooted here should be expanded
	 */
	public bool computeExpand(GtkOrientation orientation)
	{
		return gtk_widget_compute_expand(gtkWidget, orientation) != 0;
	}

	/**
	 * Translates the given @point in @widget's coordinates to coordinates
	 * relative to @target’s coordinate system.
	 *
	 * In order to perform this operation, both widgets must share a
	 * common ancestor.
	 *
	 * Params:
	 *     target = the `GtkWidget` to transform into
	 *     point = a point in @widget's coordinate system
	 *     outPoint = Set to the corresponding coordinates in
	 *         @target's coordinate system
	 *
	 * Returns: %TRUE if the point could be determined, %FALSE on failure.
	 *     In this case, 0 is stored in @out_point.
	 */
	public bool computePoint(Widget target, Point point, out Point outPoint)
	{
		graphene_point_t* outoutPoint = sliceNew!graphene_point_t();

		auto __p = gtk_widget_compute_point(gtkWidget, (target is null) ? null : target.getWidgetStruct(), (point is null) ? null : point.getPointStruct(), outoutPoint) != 0;

		outPoint = ObjectG.getDObject!(Point)(outoutPoint, true);

		return __p;
	}

	/**
	 * Computes a matrix suitable to describe a transformation from
	 * @widget's coordinate system into @target's coordinate system.
	 *
	 * The transform can not be computed in certain cases, for example
	 * when @widget and @target do not share a common ancestor. In that
	 * case @out_transform gets set to the identity matrix.
	 *
	 * Params:
	 *     target = the target widget that the matrix will transform to
	 *     outTransform = location to
	 *         store the final transformation
	 *
	 * Returns: %TRUE if the transform could be computed, %FALSE otherwise
	 */
	public bool computeTransform(Widget target, out Matrix outTransform)
	{
		graphene_matrix_t* outoutTransform = sliceNew!graphene_matrix_t();

		auto __p = gtk_widget_compute_transform(gtkWidget, (target is null) ? null : target.getWidgetStruct(), outoutTransform) != 0;

		outTransform = ObjectG.getDObject!(Matrix)(outoutTransform, true);

		return __p;
	}

	/**
	 * Tests if the point at (@x, @y) is contained in @widget.
	 *
	 * The coordinates for (@x, @y) must be in widget coordinates, so
	 * (0, 0) is assumed to be the top left of @widget's content area.
	 *
	 * Params:
	 *     x = X coordinate to test, relative to @widget's origin
	 *     y = Y coordinate to test, relative to @widget's origin
	 *
	 * Returns: %TRUE if @widget contains (@x, @y).
	 */
	public bool contains(double x, double y)
	{
		return gtk_widget_contains(gtkWidget, x, y) != 0;
	}

	/**
	 * Creates a new `PangoContext` with the appropriate font map,
	 * font options, font description, and base direction for drawing
	 * text for this widget.
	 *
	 * See also [method@Gtk.Widget.get_pango_context].
	 *
	 * Returns: the new `PangoContext`
	 */
	public PgContext createPangoContext()
	{
		auto __p = gtk_widget_create_pango_context(gtkWidget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgContext)(cast(PangoContext*) __p, true);
	}

	/**
	 * Creates a new `PangoLayout` with the appropriate font map,
	 * font description, and base direction for drawing text for
	 * this widget.
	 *
	 * If you keep a `PangoLayout` created in this way around,
	 * you need to re-create it when the widget `PangoContext`
	 * is replaced. This can be tracked by listening to changes
	 * of the [property@Gtk.Widget:root] property on the widget.
	 *
	 * Params:
	 *     text = text to set on the layout
	 *
	 * Returns: the new `PangoLayout`
	 */
	public PgLayout createPangoLayout(string text)
	{
		auto __p = gtk_widget_create_pango_layout(gtkWidget, Str.toStringz(text));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgLayout)(cast(PangoLayout*) __p, true);
	}

	/**
	 * Checks to see if a drag movement has passed the GTK drag threshold.
	 *
	 * Params:
	 *     startX = X coordinate of start of drag
	 *     startY = Y coordinate of start of drag
	 *     currentX = current X coordinate
	 *     currentY = current Y coordinate
	 *
	 * Returns: %TRUE if the drag threshold has been passed.
	 */
	public bool dragCheckThreshold(int startX, int startY, int currentX, int currentY)
	{
		return gtk_drag_check_threshold(gtkWidget, startX, startY, currentX, currentY) != 0;
	}

	/**
	 * Notifies the user about an input-related error on this widget.
	 *
	 * If the [property@Gtk.Settings:gtk-error-bell] setting is %TRUE,
	 * it calls [method@Gdk.Surface.beep], otherwise it does nothing.
	 *
	 * Note that the effect of [method@Gdk.Surface.beep] can be configured
	 * in many ways, depending on the windowing backend and the desktop
	 * environment or window manager that is used.
	 */
	public void errorBell()
	{
		gtk_widget_error_bell(gtkWidget);
	}

	/**
	 * Returns the baseline that has currently been allocated to @widget.
	 *
	 * This function is intended to be used when implementing handlers
	 * for the `GtkWidget`Class.snapshot() function, and when allocating
	 * child widgets in `GtkWidget`Class.size_allocate().
	 *
	 * Returns: the baseline of the @widget, or -1 if none
	 */
	public int getAllocatedBaseline()
	{
		return gtk_widget_get_allocated_baseline(gtkWidget);
	}

	/**
	 * Returns the height that has currently been allocated to @widget.
	 *
	 * Returns: the height of the @widget
	 */
	public int getAllocatedHeight()
	{
		return gtk_widget_get_allocated_height(gtkWidget);
	}

	/**
	 * Returns the width that has currently been allocated to @widget.
	 *
	 * Returns: the width of the @widget
	 */
	public int getAllocatedWidth()
	{
		return gtk_widget_get_allocated_width(gtkWidget);
	}

	/**
	 * Retrieves the widget’s allocation.
	 *
	 * Note, when implementing a layout container: a widget’s allocation
	 * will be its “adjusted” allocation, that is, the widget’s parent
	 * typically calls [method@Gtk.Widget.size_allocate] with an allocation,
	 * and that allocation is then adjusted (to handle margin
	 * and alignment for example) before assignment to the widget.
	 * [method@Gtk.Widget.get_allocation] returns the adjusted allocation that
	 * was actually assigned to the widget. The adjusted allocation is
	 * guaranteed to be completely contained within the
	 * [method@Gtk.Widget.size_allocate] allocation, however.
	 *
	 * So a layout container is guaranteed that its children stay inside
	 * the assigned bounds, but not that they have exactly the bounds the
	 * container assigned.
	 *
	 * Params:
	 *     allocation = a pointer to a `GtkAllocation` to copy to
	 */
	public void getAllocation(out GtkAllocation allocation)
	{
		gtk_widget_get_allocation(gtkWidget, &allocation);
	}

	/**
	 * Gets the first ancestor of @widget with type @widget_type.
	 *
	 * For example, `gtk_widget_get_ancestor (widget, GTK_TYPE_BOX)`
	 * gets the first `GtkBox` that’s an ancestor of @widget. No
	 * reference will be added to the returned widget; it should
	 * not be unreferenced.
	 *
	 * Note that unlike [method@Gtk.Widget.is_ancestor], this function
	 * considers @widget to be an ancestor of itself.
	 *
	 * Params:
	 *     widgetType = ancestor type
	 *
	 * Returns: the ancestor widget
	 */
	public Widget getAncestor(GType widgetType)
	{
		auto __p = gtk_widget_get_ancestor(gtkWidget, widgetType);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Determines whether the input focus can enter @widget or any
	 * of its children.
	 *
	 * See [method@Gtk.Widget.set_focusable].
	 *
	 * Returns: %TRUE if the input focus can enter @widget, %FALSE otherwise
	 */
	public bool getCanFocus()
	{
		return gtk_widget_get_can_focus(gtkWidget) != 0;
	}

	/**
	 * Queries whether @widget can be the target of pointer events.
	 *
	 * Returns: %TRUE if @widget can receive pointer events
	 */
	public bool getCanTarget()
	{
		return gtk_widget_get_can_target(gtkWidget) != 0;
	}

	/**
	 * Gets the value set with gtk_widget_set_child_visible().
	 *
	 * If you feel a need to use this function, your code probably
	 * needs reorganization.
	 *
	 * This function is only useful for container implementations
	 * and should never be called by an application.
	 *
	 * Returns: %TRUE if the widget is mapped with the parent.
	 */
	public bool getChildVisible()
	{
		return gtk_widget_get_child_visible(gtkWidget) != 0;
	}

	/**
	 * Gets the clipboard object for @widget.
	 *
	 * This is a utility function to get the clipboard object for the
	 * `GdkDisplay` that @widget is using.
	 *
	 * Note that this function always works, even when @widget is not
	 * realized yet.
	 *
	 * Returns: the appropriate clipboard object
	 */
	public Clipboard getClipboard()
	{
		auto __p = gtk_widget_get_clipboard(gtkWidget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Clipboard)(cast(GdkClipboard*) __p);
	}

	/**
	 * Returns the list of style classes applied to @widget.
	 *
	 * Returns: a %NULL-terminated list of
	 *     css classes currently applied to @widget. The returned
	 *     list must freed using g_strfreev().
	 */
	public string[] getCssClasses()
	{
		auto retStr = gtk_widget_get_css_classes(gtkWidget);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Returns the CSS name that is used for @self.
	 *
	 * Returns: the CSS name
	 */
	public string getCssName()
	{
		return Str.toString(gtk_widget_get_css_name(gtkWidget));
	}

	/**
	 * Queries the cursor set on @widget.
	 *
	 * See [method@Gtk.Widget.set_cursor] for details.
	 *
	 * Returns: the cursor
	 *     currently in use or %NULL if the cursor is inherited
	 */
	public Cursor getCursor()
	{
		auto __p = gtk_widget_get_cursor(gtkWidget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Cursor)(cast(GdkCursor*) __p);
	}

	/**
	 * Gets the reading direction for a particular widget.
	 *
	 * See [method@Gtk.Widget.set_direction].
	 *
	 * Returns: the reading direction for the widget.
	 */
	public GtkTextDirection getDirection()
	{
		return gtk_widget_get_direction(gtkWidget);
	}

	/**
	 * Get the `GdkDisplay` for the toplevel window associated with
	 * this widget.
	 *
	 * This function can only be called after the widget has been
	 * added to a widget hierarchy with a `GtkWindow` at the top.
	 *
	 * In general, you should only create display specific
	 * resources when a widget has been realized, and you should
	 * free those resources when the widget is unrealized.
	 *
	 * Returns: the `GdkDisplay` for the toplevel
	 *     for this widget.
	 */
	public Display getDisplay()
	{
		auto __p = gtk_widget_get_display(gtkWidget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) __p);
	}

	/**
	 * Returns the widgets first child.
	 *
	 * This API is primarily meant for widget implementations.
	 *
	 * Returns: The widget's first child
	 */
	public Widget getFirstChild()
	{
		auto __p = gtk_widget_get_first_child(gtkWidget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns the current focus child of @widget.
	 *
	 * Returns: The current focus
	 *     child of @widget
	 */
	public Widget getFocusChild()
	{
		auto __p = gtk_widget_get_focus_child(gtkWidget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns whether the widget should grab focus when it is clicked
	 * with the mouse.
	 *
	 * See [method@Gtk.Widget.set_focus_on_click].
	 *
	 * Returns: %TRUE if the widget should grab focus when it is
	 *     clicked with the mouse
	 */
	public bool getFocusOnClick()
	{
		return gtk_widget_get_focus_on_click(gtkWidget) != 0;
	}

	/**
	 * Determines whether @widget can own the input focus.
	 *
	 * See [method@Gtk.Widget.set_focusable].
	 *
	 * Returns: %TRUE if @widget can own the input focus, %FALSE otherwise
	 */
	public bool getFocusable()
	{
		return gtk_widget_get_focusable(gtkWidget) != 0;
	}

	/**
	 * Gets the font map of @widget.
	 *
	 * See [method@Gtk.Widget.set_font_map].
	 *
	 * Returns: A `PangoFontMap`
	 */
	public PgFontMap getFontMap()
	{
		auto __p = gtk_widget_get_font_map(gtkWidget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontMap)(cast(PangoFontMap*) __p);
	}

	/**
	 * Returns the `cairo_font_options_t` of widget.
	 *
	 * Seee [method@Gtk.Widget.set_font_options].
	 *
	 * Returns: the `cairo_font_options_t`
	 *     of widget
	 */
	public FontOption getFontOptions()
	{
		auto __p = gtk_widget_get_font_options(gtkWidget);

		if(__p is null)
		{
			return null;
		}

		return new FontOption(cast(cairo_font_options_t*) __p);
	}

	/**
	 * Obtains the frame clock for a widget.
	 *
	 * The frame clock is a global “ticker” that can be used to drive
	 * animations and repaints. The most common reason to get the frame
	 * clock is to call [method@Gdk.FrameClock.get_frame_time], in order
	 * to get a time to use for animating. For example you might record
	 * the start of the animation with an initial value from
	 * [method@Gdk.FrameClock.get_frame_time], and then update the animation
	 * by calling [method@Gdk.FrameClock.get_frame_time] again during each repaint.
	 *
	 * [method@Gdk.FrameClock.request_phase] will result in a new frame on the
	 * clock, but won’t necessarily repaint any widgets. To repaint a
	 * widget, you have to use [method@Gtk.Widget.queue_draw] which invalidates
	 * the widget (thus scheduling it to receive a draw on the next
	 * frame). gtk_widget_queue_draw() will also end up requesting a frame
	 * on the appropriate frame clock.
	 *
	 * A widget’s frame clock will not change while the widget is
	 * mapped. Reparenting a widget (which implies a temporary unmap) can
	 * change the widget’s frame clock.
	 *
	 * Unrealized widgets do not have a frame clock.
	 *
	 * Returns: a `GdkFrameClock`
	 */
	public FrameClock getFrameClock()
	{
		auto __p = gtk_widget_get_frame_clock(gtkWidget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FrameClock)(cast(GdkFrameClock*) __p);
	}

	/**
	 * Gets the horizontal alignment of @widget.
	 *
	 * For backwards compatibility reasons this method will never return
	 * %GTK_ALIGN_BASELINE, but instead it will convert it to
	 * %GTK_ALIGN_FILL. Baselines are not supported for horizontal
	 * alignment.
	 *
	 * Returns: the horizontal alignment of @widget
	 */
	public GtkAlign getHalign()
	{
		return gtk_widget_get_halign(gtkWidget);
	}

	/**
	 * Returns the current value of the `has-tooltip` property.
	 *
	 * Returns: current value of `has-tooltip` on @widget.
	 */
	public bool getHasTooltip()
	{
		return gtk_widget_get_has_tooltip(gtkWidget) != 0;
	}

	/**
	 * Returns the content height of the widget.
	 *
	 * This function returns the height passed to its
	 * size-allocate implementation, which is the height you
	 * should be using in [vfunc@Gtk.Widget.snapshot].
	 *
	 * For pointer events, see [method@Gtk.Widget.contains].
	 *
	 * Returns: The height of @widget
	 */
	public int getHeight()
	{
		return gtk_widget_get_height(gtkWidget);
	}

	/**
	 * Gets whether the widget would like any available extra horizontal
	 * space.
	 *
	 * When a user resizes a `GtkWindow`, widgets with expand=TRUE
	 * generally receive the extra space. For example, a list or
	 * scrollable area or document in your window would often be set to
	 * expand.
	 *
	 * Containers should use [method@Gtk.Widget.compute_expand] rather
	 * than this function, to see whether a widget, or any of its children,
	 * has the expand flag set. If any child of a widget wants to
	 * expand, the parent may ask to expand also.
	 *
	 * This function only looks at the widget’s own hexpand flag, rather
	 * than computing whether the entire widget tree rooted at this widget
	 * wants to expand.
	 *
	 * Returns: whether hexpand flag is set
	 */
	public bool getHexpand()
	{
		return gtk_widget_get_hexpand(gtkWidget) != 0;
	}

	/**
	 * Gets whether gtk_widget_set_hexpand() has been used
	 * to explicitly set the expand flag on this widget.
	 *
	 * If [property@Gtk.Widget:hexpand] property is set, then it
	 * overrides any computed expand value based on child widgets.
	 * If `hexpand` is not set, then the expand value depends on
	 * whether any children of the widget would like to expand.
	 *
	 * There are few reasons to use this function, but it’s here
	 * for completeness and consistency.
	 *
	 * Returns: whether hexpand has been explicitly set
	 */
	public bool getHexpandSet()
	{
		return gtk_widget_get_hexpand_set(gtkWidget) != 0;
	}

	/**
	 * Returns the widgets last child.
	 *
	 * This API is primarily meant for widget implementations.
	 *
	 * Returns: The widget's last child
	 */
	public Widget getLastChild()
	{
		auto __p = gtk_widget_get_last_child(gtkWidget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Retrieves the layout manager used by @widget.
	 *
	 * See [method@Gtk.Widget.set_layout_manager].
	 *
	 * Returns: a `GtkLayoutManager`
	 */
	public LayoutManager getLayoutManager()
	{
		auto __p = gtk_widget_get_layout_manager(gtkWidget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(LayoutManager)(cast(GtkLayoutManager*) __p);
	}

	/**
	 * Whether the widget is mapped.
	 *
	 * Returns: %TRUE if the widget is mapped, %FALSE otherwise.
	 */
	public bool getMapped()
	{
		return gtk_widget_get_mapped(gtkWidget) != 0;
	}

	/**
	 * Gets the bottom margin of @widget.
	 *
	 * Returns: The bottom margin of @widget
	 */
	public int getMarginBottom()
	{
		return gtk_widget_get_margin_bottom(gtkWidget);
	}

	/**
	 * Gets the end margin of @widget.
	 *
	 * Returns: The end margin of @widget
	 */
	public int getMarginEnd()
	{
		return gtk_widget_get_margin_end(gtkWidget);
	}

	/**
	 * Gets the start margin of @widget.
	 *
	 * Returns: The start margin of @widget
	 */
	public int getMarginStart()
	{
		return gtk_widget_get_margin_start(gtkWidget);
	}

	/**
	 * Gets the top margin of @widget.
	 *
	 * Returns: The top margin of @widget
	 */
	public int getMarginTop()
	{
		return gtk_widget_get_margin_top(gtkWidget);
	}

	/**
	 * Retrieves the name of a widget.
	 *
	 * See [method@Gtk.Widget.set_name] for the significance of widget names.
	 *
	 * Returns: name of the widget. This string is owned by GTK and
	 *     should not be modified or freed
	 */
	public string getName()
	{
		return Str.toString(gtk_widget_get_name(gtkWidget));
	}

	/**
	 * Returns the nearest `GtkNative` ancestor of @widget.
	 *
	 * This function will return %NULL if the widget is not
	 * contained inside a widget tree with a native ancestor.
	 *
	 * `GtkNative` widgets will return themselves here.
	 *
	 * Returns: the `GtkNative` ancestor of @widget
	 */
	public NativeIF getNative()
	{
		auto __p = gtk_widget_get_native(gtkWidget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(NativeIF)(cast(GtkNative*) __p);
	}

	/**
	 * Returns the widgets next sibling.
	 *
	 * This API is primarily meant for widget implementations.
	 *
	 * Returns: The widget's next sibling
	 */
	public Widget getNextSibling()
	{
		auto __p = gtk_widget_get_next_sibling(gtkWidget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * #Fetches the requested opacity for this widget.
	 *
	 * See [method@Gtk.Widget.set_opacity].
	 *
	 * Returns: the requested opacity for this widget.
	 */
	public double getOpacity()
	{
		return gtk_widget_get_opacity(gtkWidget);
	}

	/**
	 * Returns the widgets overflow value.
	 *
	 * Returns: The widget's overflow.
	 */
	public GtkOverflow getOverflow()
	{
		return gtk_widget_get_overflow(gtkWidget);
	}

	/**
	 * Gets a `PangoContext` with the appropriate font map, font description,
	 * and base direction for this widget.
	 *
	 * Unlike the context returned by [method@Gtk.Widget.create_pango_context],
	 * this context is owned by the widget (it can be used until the screen
	 * for the widget changes or the widget is removed from its toplevel),
	 * and will be updated to match any changes to the widget’s attributes.
	 * This can be tracked by listening to changes of the
	 * [property@Gtk.Widget:root] property on the widget.
	 *
	 * Returns: the `PangoContext` for the widget.
	 */
	public PgContext getPangoContext()
	{
		auto __p = gtk_widget_get_pango_context(gtkWidget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgContext)(cast(PangoContext*) __p);
	}

	/**
	 * Returns the parent widget of @widget.
	 *
	 * Returns: the parent widget of @widget
	 */
	public Widget getParent()
	{
		auto __p = gtk_widget_get_parent(gtkWidget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Retrieves the minimum and natural size of a widget, taking
	 * into account the widget’s preference for height-for-width management.
	 *
	 * This is used to retrieve a suitable size by container widgets which do
	 * not impose any restrictions on the child placement. It can be used
	 * to deduce toplevel window and menu sizes as well as child widgets in
	 * free-form containers such as `GtkFixed`.
	 *
	 * Handle with care. Note that the natural height of a height-for-width
	 * widget will generally be a smaller size than the minimum height, since
	 * the required height for the natural width is generally smaller than the
	 * required height for the minimum width.
	 *
	 * Use [id@gtk_widget_measure] if you want to support baseline alignment.
	 *
	 * Params:
	 *     minimumSize = location for storing the minimum size
	 *     naturalSize = location for storing the natural size
	 */
	public void getPreferredSize(out Requisition minimumSize, out Requisition naturalSize)
	{
		GtkRequisition* outminimumSize = sliceNew!GtkRequisition();
		GtkRequisition* outnaturalSize = sliceNew!GtkRequisition();

		gtk_widget_get_preferred_size(gtkWidget, outminimumSize, outnaturalSize);

		minimumSize = ObjectG.getDObject!(Requisition)(outminimumSize, true);
		naturalSize = ObjectG.getDObject!(Requisition)(outnaturalSize, true);
	}

	/**
	 * Returns the widgets previous sibling.
	 *
	 * This API is primarily meant for widget implementations.
	 *
	 * Returns: The widget's previous sibling
	 */
	public Widget getPrevSibling()
	{
		auto __p = gtk_widget_get_prev_sibling(gtkWidget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the primary clipboard of @widget.
	 *
	 * This is a utility function to get the primary clipboard object
	 * for the `GdkDisplay` that @widget is using.
	 *
	 * Note that this function always works, even when @widget is not
	 * realized yet.
	 *
	 * Returns: the appropriate clipboard object
	 */
	public Clipboard getPrimaryClipboard()
	{
		auto __p = gtk_widget_get_primary_clipboard(gtkWidget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Clipboard)(cast(GdkClipboard*) __p);
	}

	/**
	 * Determines whether @widget is realized.
	 *
	 * Returns: %TRUE if @widget is realized, %FALSE otherwise
	 */
	public bool getRealized()
	{
		return gtk_widget_get_realized(gtkWidget) != 0;
	}

	/**
	 * Determines whether @widget is always treated as the default widget
	 * within its toplevel when it has the focus, even if another widget
	 * is the default.
	 *
	 * See [method@Gtk.Widget.set_receives_default].
	 *
	 * Returns: %TRUE if @widget acts as the default widget when focused,
	 *     %FALSE otherwise
	 */
	public bool getReceivesDefault()
	{
		return gtk_widget_get_receives_default(gtkWidget) != 0;
	}

	/**
	 * Gets whether the widget prefers a height-for-width layout
	 * or a width-for-height layout.
	 *
	 * Single-child widgets generally propagate the preference of
	 * their child, more complex widgets need to request something
	 * either in context of their children or in context of their
	 * allocation capabilities.
	 *
	 * Returns: The `GtkSizeRequestMode` preferred by @widget.
	 */
	public GtkSizeRequestMode getRequestMode()
	{
		return gtk_widget_get_request_mode(gtkWidget);
	}

	/**
	 * Returns the `GtkRoot` widget of @widget.
	 *
	 * This function will return %NULL if the widget is not contained
	 * inside a widget tree with a root widget.
	 *
	 * `GtkRoot` widgets will return themselves here.
	 *
	 * Returns: the root widget of @widget
	 */
	public RootIF getRoot()
	{
		auto __p = gtk_widget_get_root(gtkWidget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(RootIF)(cast(GtkRoot*) __p);
	}

	/**
	 * Retrieves the internal scale factor that maps from window
	 * coordinates to the actual device pixels.
	 *
	 * On traditional systems this is 1, on high density outputs,
	 * it can be a higher value (typically 2).
	 *
	 * See [method@Gdk.Surface.get_scale_factor].
	 *
	 * Returns: the scale factor for @widget
	 */
	public int getScaleFactor()
	{
		return gtk_widget_get_scale_factor(gtkWidget);
	}

	/**
	 * Returns the widget’s sensitivity.
	 *
	 * This function returns the value that has been set using
	 * [method@Gtk.Widget.set_sensitive]).
	 *
	 * The effective sensitivity of a widget is however determined
	 * by both its own and its parent widget’s sensitivity.
	 * See [method@Gtk.Widget.is_sensitive].
	 *
	 * Returns: %TRUE if the widget is sensitive
	 */
	public bool getSensitive()
	{
		return gtk_widget_get_sensitive(gtkWidget) != 0;
	}

	/**
	 * Gets the settings object holding the settings used for this widget.
	 *
	 * Note that this function can only be called when the `GtkWidget`
	 * is attached to a toplevel, since the settings object is specific
	 * to a particular `GdkDisplay`. If you want to monitor the widget for
	 * changes in its settings, connect to the `notify::display` signal.
	 *
	 * Returns: the relevant `GtkSettings` object
	 */
	public Settings getSettings()
	{
		auto __p = gtk_widget_get_settings(gtkWidget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Settings)(cast(GtkSettings*) __p);
	}

	/**
	 * Returns the content width or height of the widget.
	 *
	 * Which dimension is returned depends on @orientation.
	 *
	 * This is equivalent to calling [method@Gtk.Widget.get_width]
	 * for %GTK_ORIENTATION_HORIZONTAL or [method@Gtk.Widget.get_height]
	 * for %GTK_ORIENTATION_VERTICAL, but can be used when
	 * writing orientation-independent code, such as when
	 * implementing [iface@Gtk.Orientable] widgets.
	 *
	 * Params:
	 *     orientation = the orientation to query
	 *
	 * Returns: The size of @widget in @orientation.
	 */
	public int getSize(GtkOrientation orientation)
	{
		return gtk_widget_get_size(gtkWidget, orientation);
	}

	/**
	 * Gets the size request that was explicitly set for the widget using
	 * gtk_widget_set_size_request().
	 *
	 * A value of -1 stored in @width or @height indicates that that
	 * dimension has not been set explicitly and the natural requisition
	 * of the widget will be used instead. See
	 * [method@Gtk.Widget.set_size_request]. To get the size a widget will
	 * actually request, call [method@Gtk.Widget.measure] instead of
	 * this function.
	 *
	 * Params:
	 *     width = return location for width
	 *     height = return location for height
	 */
	public void getSizeRequest(out int width, out int height)
	{
		gtk_widget_get_size_request(gtkWidget, &width, &height);
	}

	/**
	 * Returns the widget state as a flag set.
	 *
	 * It is worth mentioning that the effective %GTK_STATE_FLAG_INSENSITIVE
	 * state will be returned, that is, also based on parent insensitivity,
	 * even if @widget itself is sensitive.
	 *
	 * Also note that if you are looking for a way to obtain the
	 * [flags@Gtk.StateFlags] to pass to a [class@Gtk.StyleContext]
	 * method, you should look at [method@Gtk.StyleContext.get_state].
	 *
	 * Returns: The state flags for widget
	 */
	public GtkStateFlags getStateFlags()
	{
		return gtk_widget_get_state_flags(gtkWidget);
	}

	/**
	 * Returns the style context associated to @widget.
	 *
	 * The returned object is guaranteed to be the same
	 * for the lifetime of @widget.
	 *
	 * Returns: the widgets `GtkStyleContext`
	 */
	public StyleContext getStyleContext()
	{
		auto __p = gtk_widget_get_style_context(gtkWidget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(StyleContext)(cast(GtkStyleContext*) __p);
	}

	/**
	 * Fetch an object build from the template XML for @widget_type in
	 * this @widget instance.
	 *
	 * This will only report children which were previously declared
	 * with [method@Gtk.WidgetClass.bind_template_child_full] or one of its
	 * variants.
	 *
	 * This function is only meant to be called for code which is private
	 * to the @widget_type which declared the child and is meant for language
	 * bindings which cannot easily make use of the GObject structure offsets.
	 *
	 * Params:
	 *     widgetType = The `GType` to get a template child for
	 *     name = The “id” of the child defined in the template XML
	 *
	 * Returns: The object built in the template XML with
	 *     the id @name
	 */
	public ObjectG getTemplateChild(GType widgetType, string name)
	{
		auto __p = gtk_widget_get_template_child(gtkWidget, widgetType, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) __p);
	}

	/**
	 * Gets the contents of the tooltip for @widget.
	 *
	 * If the tooltip has not been set using
	 * [method@Gtk.Widget.set_tooltip_markup], this
	 * function returns %NULL.
	 *
	 * Returns: the tooltip text
	 */
	public string getTooltipMarkup()
	{
		return Str.toString(gtk_widget_get_tooltip_markup(gtkWidget));
	}

	/**
	 * Gets the contents of the tooltip for @widget.
	 *
	 * If the @widget's tooltip was set using
	 * [method@Gtk.Widget.set_tooltip_markup],
	 * this function will return the escaped text.
	 *
	 * Returns: the tooltip text
	 */
	public string getTooltipText()
	{
		return Str.toString(gtk_widget_get_tooltip_text(gtkWidget));
	}

	/**
	 * Gets the vertical alignment of @widget.
	 *
	 * Returns: the vertical alignment of @widget
	 */
	public GtkAlign getValign()
	{
		return gtk_widget_get_valign(gtkWidget);
	}

	/**
	 * Gets whether the widget would like any available extra vertical
	 * space.
	 *
	 * See [method@Gtk.Widget.get_hexpand] for more detail.
	 *
	 * Returns: whether vexpand flag is set
	 */
	public bool getVexpand()
	{
		return gtk_widget_get_vexpand(gtkWidget) != 0;
	}

	/**
	 * Gets whether gtk_widget_set_vexpand() has been used to
	 * explicitly set the expand flag on this widget.
	 *
	 * See [method@Gtk.Widget.get_hexpand_set] for more detail.
	 *
	 * Returns: whether vexpand has been explicitly set
	 */
	public bool getVexpandSet()
	{
		return gtk_widget_get_vexpand_set(gtkWidget) != 0;
	}

	/**
	 * Determines whether the widget is visible.
	 *
	 * If you want to take into account whether the widget’s
	 * parent is also marked as visible, use
	 * [method@Gtk.Widget.is_visible] instead.
	 *
	 * This function does not check if the widget is
	 * obscured in any way.
	 *
	 * See [method@Gtk.Widget.set_visible].
	 *
	 * Returns: %TRUE if the widget is visible
	 */
	public bool getVisible()
	{
		return gtk_widget_get_visible(gtkWidget) != 0;
	}

	/**
	 * Returns the content width of the widget.
	 *
	 * This function returns the width passed to its
	 * size-allocate implementation, which is the width you
	 * should be using in [vfunc@Gtk.Widget.snapshot].
	 *
	 * For pointer events, see [method@Gtk.Widget.contains].
	 *
	 * Returns: The width of @widget
	 */
	public int getWidth()
	{
		return gtk_widget_get_width(gtkWidget);
	}

	/**
	 * Causes @widget to have the keyboard focus for the `GtkWindow` it's inside.
	 *
	 * If @widget is not focusable, or its [vfunc@Gtk.Widget.grab_focus]
	 * implementation cannot transfer the focus to a descendant of @widget
	 * that is focusable, it will not take focus and %FALSE will be returned.
	 *
	 * Calling [method@Gtk.Widget.grab_focus] on an already focused widget
	 * is allowed, should not have an effect, and return %TRUE.
	 *
	 * Returns: %TRUE if focus is now inside @widget.
	 */
	public bool grabFocus()
	{
		return gtk_widget_grab_focus(gtkWidget) != 0;
	}

	/**
	 * Returns whether @css_class is currently applied to @widget.
	 *
	 * Params:
	 *     cssClass = A style class, without the leading '.'
	 *         used for notation of style classes
	 *
	 * Returns: %TRUE if @css_class is currently applied to @widget,
	 *     %FALSE otherwise.
	 */
	public bool hasCssClass(string cssClass)
	{
		return gtk_widget_has_css_class(gtkWidget, Str.toStringz(cssClass)) != 0;
	}

	/**
	 * Determines whether @widget is the current default widget
	 * within its toplevel.
	 *
	 * Returns: %TRUE if @widget is the current default widget
	 *     within its toplevel, %FALSE otherwise
	 */
	public bool hasDefault()
	{
		return gtk_widget_has_default(gtkWidget) != 0;
	}

	/**
	 * Determines if the widget has the global input focus.
	 *
	 * See [method@Gtk.Widget.is_focus] for the difference between
	 * having the global input focus, and only having the focus
	 * within a toplevel.
	 *
	 * Returns: %TRUE if the widget has the global input focus.
	 */
	public bool hasFocus()
	{
		return gtk_widget_has_focus(gtkWidget) != 0;
	}

	/**
	 * Determines if the widget should show a visible indication that
	 * it has the global input focus.
	 *
	 * This is a convenience function that takes into account whether
	 * focus indication should currently be shown in the toplevel window
	 * of @widget. See [method@Gtk.Window.get_focus_visible] for more
	 * information about focus indication.
	 *
	 * To find out if the widget has the global input focus, use
	 * [method@Gtk.Widget.has_focus].
	 *
	 * Returns: %TRUE if the widget should display a “focus rectangle”
	 */
	public bool hasVisibleFocus()
	{
		return gtk_widget_has_visible_focus(gtkWidget) != 0;
	}

	/**
	 * Reverses the effects of gtk_widget_show().
	 *
	 * This is causing the widget to be hidden (invisible to the user).
	 */
	public void hide()
	{
		gtk_widget_hide(gtkWidget);
	}

	/**
	 * Returns whether the widget is currently being destroyed.
	 *
	 * This information can sometimes be used to avoid doing
	 * unnecessary work.
	 *
	 * Returns: %TRUE if @widget is being destroyed
	 */
	public bool inDestruction()
	{
		return gtk_widget_in_destruction(gtkWidget) != 0;
	}

	/**
	 * Creates and initializes child widgets defined in templates.
	 *
	 * This function must be called in the instance initializer
	 * for any class which assigned itself a template using
	 * [method@Gtk.WidgetClass.set_template].
	 *
	 * It is important to call this function in the instance initializer
	 * of a `GtkWidget` subclass and not in `GObject.constructed()` or
	 * `GObject.constructor()` for two reasons:
	 *
	 * - derived widgets will assume that the composite widgets
	 * defined by its parent classes have been created in their
	 * relative instance initializers
	 * - when calling `g_object_new()` on a widget with composite templates,
	 * it’s important to build the composite widgets before the construct
	 * properties are set. Properties passed to `g_object_new()` should
	 * take precedence over properties set in the private template XML
	 *
	 * A good rule of thumb is to call this function as the first thing in
	 * an instance initialization function.
	 */
	public void initTemplate()
	{
		gtk_widget_init_template(gtkWidget);
	}

	/**
	 * Inserts @group into @widget.
	 *
	 * Children of @widget that implement [iface@Gtk.Actionable] can
	 * then be associated with actions in @group by setting their
	 * “action-name” to @prefix.`action-name`.
	 *
	 * Note that inheritance is defined for individual actions. I.e.
	 * even if you insert a group with prefix @prefix, actions with
	 * the same prefix will still be inherited from the parent, unless
	 * the group contains an action with the same name.
	 *
	 * If @group is %NULL, a previously inserted group for @name is
	 * removed from @widget.
	 *
	 * Params:
	 *     name = the prefix for actions in @group
	 *     group = a `GActionGroup`, or %NULL to remove
	 *         the previously inserted group for @name
	 */
	public void insertActionGroup(string name, ActionGroupIF group)
	{
		gtk_widget_insert_action_group(gtkWidget, Str.toStringz(name), (group is null) ? null : group.getActionGroupStruct());
	}

	/**
	 * Inserts @widget into the child widget list of @parent.
	 *
	 * It will be placed after @previous_sibling, or at the beginning if
	 * @previous_sibling is %NULL.
	 *
	 * After calling this function, `gtk_widget_get_prev_sibling(widget)`
	 * will return @previous_sibling.
	 *
	 * If @parent is already set as the parent widget of @widget, this
	 * function can also be used to reorder @widget in the child widget
	 * list of @parent.
	 *
	 * This API is primarily meant for widget implementations; if you are
	 * just using a widget, you *must* use its own API for adding children.
	 *
	 * Params:
	 *     parent = the parent `GtkWidget` to insert @widget into
	 *     previousSibling = the new previous sibling of @widget
	 */
	public void insertAfter(Widget parent, Widget previousSibling)
	{
		gtk_widget_insert_after(gtkWidget, (parent is null) ? null : parent.getWidgetStruct(), (previousSibling is null) ? null : previousSibling.getWidgetStruct());
	}

	/**
	 * Inserts @widget into the child widget list of @parent.
	 *
	 * It will be placed before @next_sibling, or at the end if
	 * @next_sibling is %NULL.
	 *
	 * After calling this function, `gtk_widget_get_next_sibling(widget)`
	 * will return @next_sibling.
	 *
	 * If @parent is already set as the parent widget of @widget, this function
	 * can also be used to reorder @widget in the child widget list of @parent.
	 *
	 * This API is primarily meant for widget implementations; if you are
	 * just using a widget, you *must* use its own API for adding children.
	 *
	 * Params:
	 *     parent = the parent `GtkWidget` to insert @widget into
	 *     nextSibling = the new next sibling of @widget
	 */
	public void insertBefore(Widget parent, Widget nextSibling)
	{
		gtk_widget_insert_before(gtkWidget, (parent is null) ? null : parent.getWidgetStruct(), (nextSibling is null) ? null : nextSibling.getWidgetStruct());
	}

	/**
	 * Determines whether @widget is somewhere inside @ancestor,
	 * possibly with intermediate containers.
	 *
	 * Params:
	 *     ancestor = another `GtkWidget`
	 *
	 * Returns: %TRUE if @ancestor contains @widget as a child,
	 *     grandchild, great grandchild, etc.
	 */
	public bool isAncestor(Widget ancestor)
	{
		return gtk_widget_is_ancestor(gtkWidget, (ancestor is null) ? null : ancestor.getWidgetStruct()) != 0;
	}

	/**
	 * Determines whether @widget can be drawn to.
	 *
	 * A widget can be drawn if it is mapped and visible.
	 *
	 * Returns: %TRUE if @widget is drawable, %FALSE otherwise
	 */
	public bool isDrawable()
	{
		return gtk_widget_is_drawable(gtkWidget) != 0;
	}

	/**
	 * Determines if the widget is the focus widget within its
	 * toplevel.
	 *
	 * This does not mean that the [property@Gtk.Widget:has-focus]
	 * property is necessarily set; [property@Gtk.Widget:has-focus]
	 * will only be set if the toplevel widget additionally has the
	 * global input focus.
	 *
	 * Returns: %TRUE if the widget is the focus widget.
	 */
	public bool isFocus()
	{
		return gtk_widget_is_focus(gtkWidget) != 0;
	}

	/**
	 * Returns the widget’s effective sensitivity.
	 *
	 * This means it is sensitive itself and also its
	 * parent widget is sensitive.
	 *
	 * Returns: %TRUE if the widget is effectively sensitive
	 */
	public bool isSensitive()
	{
		return gtk_widget_is_sensitive(gtkWidget) != 0;
	}

	/**
	 * Determines whether the widget and all its parents are marked as
	 * visible.
	 *
	 * This function does not check if the widget is obscured in any way.
	 *
	 * See also [method@Gtk.Widget.get_visible] and
	 * [method@Gtk.Widget.set_visible].
	 *
	 * Returns: %TRUE if the widget and all its parents are visible
	 */
	public bool isVisible()
	{
		return gtk_widget_is_visible(gtkWidget) != 0;
	}

	/**
	 * Emits the `::keynav-failed` signal on the widget.
	 *
	 * This function should be called whenever keyboard navigation
	 * within a single widget hits a boundary.
	 *
	 * The return value of this function should be interpreted
	 * in a way similar to the return value of
	 * [method@Gtk.Widget.child_focus]. When %TRUE is returned,
	 * stay in the widget, the failed keyboard  navigation is OK
	 * and/or there is nowhere we can/should move the focus to.
	 * When %FALSE is returned, the caller should continue with
	 * keyboard navigation outside the widget, e.g. by calling
	 * [method@Gtk.Widget.child_focus] on the widget’s toplevel.
	 *
	 * The default [signal@Gtk.Widget::keynav-failed] handler returns
	 * %FALSE for %GTK_DIR_TAB_FORWARD and %GTK_DIR_TAB_BACKWARD.
	 * For the other values of `GtkDirectionType` it returns %TRUE.
	 *
	 * Whenever the default handler returns %TRUE, it also calls
	 * [method@Gtk.Widget.error_bell] to notify the user of the
	 * failed keyboard navigation.
	 *
	 * A use case for providing an own implementation of ::keynav-failed
	 * (either by connecting to it or by overriding it) would be a row of
	 * [class@Gtk.Entry] widgets where the user should be able to navigate
	 * the entire row with the cursor keys, as e.g. known from user
	 * interfaces that require entering license keys.
	 *
	 * Params:
	 *     direction = direction of focus movement
	 *
	 * Returns: %TRUE if stopping keyboard navigation is fine, %FALSE
	 *     if the emitting widget should try to handle the keyboard
	 *     navigation attempt in its parent container(s).
	 */
	public bool keynavFailed(GtkDirectionType direction)
	{
		return gtk_widget_keynav_failed(gtkWidget, direction) != 0;
	}

	/**
	 * Returns the widgets for which this widget is the target of a
	 * mnemonic.
	 *
	 * Typically, these widgets will be labels. See, for example,
	 * [method@Gtk.Label.set_mnemonic_widget].
	 *
	 * The widgets in the list are not individually referenced.
	 * If you want to iterate through the list and perform actions
	 * involving callbacks that might destroy the widgets, you
	 * must call `g_list_foreach (result, (GFunc)g_object_ref, NULL)`
	 * first, and then unref all the widgets afterwards.
	 *
	 * Returns: the list
	 *     of mnemonic labels; free this list with g_list_free() when you
	 *     are done with it.
	 */
	public ListG listMnemonicLabels()
	{
		auto __p = gtk_widget_list_mnemonic_labels(gtkWidget);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Causes a widget to be mapped if it isn’t already.
	 *
	 * This function is only for use in widget implementations.
	 */
	public void map()
	{
		gtk_widget_map(gtkWidget);
	}

	/**
	 * Measures @widget in the orientation @orientation and for the given @for_size.
	 *
	 * As an example, if @orientation is %GTK_ORIENTATION_HORIZONTAL and @for_size
	 * is 300, this functions will compute the minimum and natural width of @widget
	 * if it is allocated at a height of 300 pixels.
	 *
	 * See [GtkWidget’s geometry management section](class.Widget.html#height-for-width-geometry-management) for
	 * a more details on implementing `GtkWidgetClass.measure()`.
	 *
	 * Params:
	 *     orientation = the orientation to measure
	 *     forSize = Size for the opposite of @orientation, i.e.
	 *         if @orientation is %GTK_ORIENTATION_HORIZONTAL, this is
	 *         the height the widget should be measured with. The %GTK_ORIENTATION_VERTICAL
	 *         case is analogous. This way, both height-for-width and width-for-height
	 *         requests can be implemented. If no size is known, -1 can be passed.
	 *     minimum = location to store the minimum size
	 *     natural = location to store the natural size
	 *     minimumBaseline = location to store the baseline
	 *         position for the minimum size, or -1 to report no baseline
	 *     naturalBaseline = location to store the baseline
	 *         position for the natural size, or -1 to report no baseline
	 */
	public void measure(GtkOrientation orientation, int forSize, out int minimum, out int natural, out int minimumBaseline, out int naturalBaseline)
	{
		gtk_widget_measure(gtkWidget, orientation, forSize, &minimum, &natural, &minimumBaseline, &naturalBaseline);
	}

	/**
	 * Emits the ::mnemonic-activate signal.
	 *
	 * See [signal@Gtk.Widget::mnemonic-activate].
	 *
	 * Params:
	 *     groupCycling = %TRUE if there are other widgets with the same mnemonic
	 *
	 * Returns: %TRUE if the signal has been handled
	 */
	public bool mnemonicActivate(bool groupCycling)
	{
		return gtk_widget_mnemonic_activate(gtkWidget, groupCycling) != 0;
	}

	/**
	 * Returns a `GListModel` to track the children of @widget.
	 *
	 * Calling this function will enable extra internal bookkeeping
	 * to track children and emit signals on the returned listmodel.
	 * It may slow down operations a lot.
	 *
	 * Applications should try hard to avoid calling this function
	 * because of the slowdowns.
	 *
	 * Returns: a `GListModel` tracking @widget's children
	 */
	public ListModelIF observeChildren()
	{
		auto __p = gtk_widget_observe_children(gtkWidget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListModelIF)(cast(GListModel*) __p, true);
	}

	/**
	 * Returns a `GListModel` to track the [class@Gtk.EventController]s
	 * of @widget.
	 *
	 * Calling this function will enable extra internal bookkeeping
	 * to track controllers and emit signals on the returned listmodel.
	 * It may slow down operations a lot.
	 *
	 * Applications should try hard to avoid calling this function
	 * because of the slowdowns.
	 *
	 * Returns: a `GListModel` tracking @widget's controllers
	 */
	public ListModelIF observeControllers()
	{
		auto __p = gtk_widget_observe_controllers(gtkWidget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListModelIF)(cast(GListModel*) __p, true);
	}

	/**
	 * Finds the descendant of @widget closest to the point (@x, @y).
	 *
	 * The point must be given in widget coordinates, so (0, 0) is assumed
	 * to be the top left of @widget's content area.
	 *
	 * Usually widgets will return %NULL if the given coordinate is not
	 * contained in @widget checked via [method@Gtk.Widget.contains].
	 * Otherwise they will recursively try to find a child that does
	 * not return %NULL. Widgets are however free to customize their
	 * picking algorithm.
	 *
	 * This function is used on the toplevel to determine the widget
	 * below the mouse cursor for purposes of hover highlighting and
	 * delivering events.
	 *
	 * Params:
	 *     x = X coordinate to test, relative to @widget's origin
	 *     y = Y coordinate to test, relative to @widget's origin
	 *     flags = Flags to influence what is picked
	 *
	 * Returns: The widget descendant at
	 *     the given point
	 */
	public Widget pick(double x, double y, GtkPickFlags flags)
	{
		auto __p = gtk_widget_pick(gtkWidget, x, y, flags);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Flags the widget for a rerun of the [vfunc@Gtk.Widget.size_allocate]
	 * function.
	 *
	 * Use this function instead of [method@Gtk.Widget.queue_resize]
	 * when the @widget's size request didn't change but it wants to
	 * reposition its contents.
	 *
	 * An example user of this function is [method@Gtk.Widget.set_halign].
	 *
	 * This function is only for use in widget implementations.
	 */
	public void queueAllocate()
	{
		gtk_widget_queue_allocate(gtkWidget);
	}

	/**
	 * Schedules this widget to be redrawn in the paint phase
	 * of the current or the next frame.
	 *
	 * This means @widget's [vfunc@Gtk.Widget.snapshot]
	 * implementation will be called.
	 */
	public void queueDraw()
	{
		gtk_widget_queue_draw(gtkWidget);
	}

	/**
	 * Flags a widget to have its size renegotiated.
	 *
	 * This should be called when a widget for some reason has a new
	 * size request. For example, when you change the text in a
	 * [class@Gtk.Label], the label queues a resize to ensure there’s
	 * enough space for the new text.
	 *
	 * Note that you cannot call gtk_widget_queue_resize() on a widget
	 * from inside its implementation of the [vfunc@Gtk.Widget.size_allocate]
	 * virtual method. Calls to gtk_widget_queue_resize() from inside
	 * [vfunc@Gtk.Widget.size_allocate] will be silently ignored.
	 *
	 * This function is only for use in widget implementations.
	 */
	public void queueResize()
	{
		gtk_widget_queue_resize(gtkWidget);
	}

	/**
	 * Creates the GDK resources associated with a widget.
	 *
	 * Normally realization happens implicitly; if you show a widget
	 * and all its parent containers, then the widget will be realized
	 * and mapped automatically.
	 *
	 * Realizing a widget requires all the widget’s parent widgets to be
	 * realized; calling this function realizes the widget’s parents
	 * in addition to @widget itself. If a widget is not yet inside a
	 * toplevel window when you realize it, bad things will happen.
	 *
	 * This function is primarily used in widget implementations, and
	 * isn’t very useful otherwise. Many times when you think you might
	 * need it, a better approach is to connect to a signal that will be
	 * called after the widget is realized automatically, such as
	 * [signal@Gtk.Widget::realize].
	 */
	public void realize()
	{
		gtk_widget_realize(gtkWidget);
	}

	/**
	 * Removes @controller from @widget, so that it doesn't process
	 * events anymore.
	 *
	 * It should not be used again.
	 *
	 * Widgets will remove all event controllers automatically when they
	 * are destroyed, there is normally no need to call this function.
	 *
	 * Params:
	 *     controller = a `GtkEventController`
	 */
	public void removeController(EventController controller)
	{
		gtk_widget_remove_controller(gtkWidget, (controller is null) ? null : controller.getEventControllerStruct());
	}

	/**
	 * Removes a style from @widget.
	 *
	 * After this, the style of @widget will stop matching for @css_class.
	 *
	 * Params:
	 *     cssClass = The style class to remove from @widget, without
	 *         the leading '.' used for notation of style classes
	 */
	public void removeCssClass(string cssClass)
	{
		gtk_widget_remove_css_class(gtkWidget, Str.toStringz(cssClass));
	}

	/**
	 * Removes a widget from the list of mnemonic labels for this widget.
	 *
	 * See [method@Gtk.Widget.list_mnemonic_labels]. The widget must
	 * have previously been added to the list with
	 * [method@Gtk.Widget.add_mnemonic_label].
	 *
	 * Params:
	 *     label = a `GtkWidget` that was previously set as a mnemonic
	 *         label for @widget with [method@Gtk.Widget.add_mnemonic_label]
	 */
	public void removeMnemonicLabel(Widget label)
	{
		gtk_widget_remove_mnemonic_label(gtkWidget, (label is null) ? null : label.getWidgetStruct());
	}

	/**
	 * Removes a tick callback previously registered with
	 * gtk_widget_add_tick_callback().
	 *
	 * Params:
	 *     id = an id returned by [method@Gtk.Widget.add_tick_callback]
	 */
	public void removeTickCallback(uint id)
	{
		gtk_widget_remove_tick_callback(gtkWidget, id);
	}

	/**
	 * Specifies whether the input focus can enter the widget
	 * or any of its children.
	 *
	 * Applications should set @can_focus to %FALSE to mark a
	 * widget as for pointer/touch use only.
	 *
	 * Note that having @can_focus be %TRUE is only one of the
	 * necessary conditions for being focusable. A widget must
	 * also be sensitive and focusable and not have an ancestor
	 * that is marked as not can-focus in order to receive input
	 * focus.
	 *
	 * See [method@Gtk.Widget.grab_focus] for actually setting
	 * the input focus on a widget.
	 *
	 * Params:
	 *     canFocus = whether or not the input focus can enter
	 *         the widget or any of its children
	 */
	public void setCanFocus(bool canFocus)
	{
		gtk_widget_set_can_focus(gtkWidget, canFocus);
	}

	/**
	 * Sets whether @widget can be the target of pointer events.
	 *
	 * Params:
	 *     canTarget = whether this widget should be able to
	 *         receive pointer events
	 */
	public void setCanTarget(bool canTarget)
	{
		gtk_widget_set_can_target(gtkWidget, canTarget);
	}

	/**
	 * Sets whether @widget should be mapped along with its parent.
	 *
	 * The child visibility can be set for widget before it is added
	 * to a container with [method@Gtk.Widget.set_parent], to avoid
	 * mapping children unnecessary before immediately unmapping them.
	 * However it will be reset to its default state of %TRUE when the
	 * widget is removed from a container.
	 *
	 * Note that changing the child visibility of a widget does not
	 * queue a resize on the widget. Most of the time, the size of
	 * a widget is computed from all visible children, whether or
	 * not they are mapped. If this is not the case, the container
	 * can queue a resize itself.
	 *
	 * This function is only useful for container implementations
	 * and should never be called by an application.
	 *
	 * Params:
	 *     childVisible = if %TRUE, @widget should be mapped along
	 *         with its parent.
	 */
	public void setChildVisible(bool childVisible)
	{
		gtk_widget_set_child_visible(gtkWidget, childVisible);
	}

	/**
	 * Clear all style classes applied to @widget
	 * and replace them with @classes.
	 *
	 * Params:
	 *     classes = %NULL-terminated list of style classes to apply to @widget.
	 */
	public void setCssClasses(string[] classes)
	{
		gtk_widget_set_css_classes(gtkWidget, Str.toStringzArray(classes));
	}

	/**
	 * Sets the cursor to be shown when pointer devices point
	 * towards @widget.
	 *
	 * If the @cursor is NULL, @widget will use the cursor
	 * inherited from the parent widget.
	 *
	 * Params:
	 *     cursor = the new cursor
	 */
	public void setCursor(Cursor cursor)
	{
		gtk_widget_set_cursor(gtkWidget, (cursor is null) ? null : cursor.getCursorStruct());
	}

	/**
	 * Sets a named cursor to be shown when pointer devices point
	 * towards @widget.
	 *
	 * This is a utility function that creates a cursor via
	 * [ctor@Gdk.Cursor.new_from_name] and then sets it on @widget
	 * with [method@Gtk.Widget.set_cursor]. See those functions for
	 * details.
	 *
	 * On top of that, this function allows @name to be %NULL, which
	 * will do the same as calling [method@Gtk.Widget.set_cursor]
	 * with a %NULL cursor.
	 *
	 * Params:
	 *     name = The name of the cursor
	 */
	public void setCursorFromName(string name)
	{
		gtk_widget_set_cursor_from_name(gtkWidget, Str.toStringz(name));
	}

	/**
	 * Sets the reading direction on a particular widget.
	 *
	 * This direction controls the primary direction for widgets
	 * containing text, and also the direction in which the children
	 * of a container are packed. The ability to set the direction is
	 * present in order so that correct localization into languages with
	 * right-to-left reading directions can be done. Generally, applications
	 * will let the default reading direction present, except for containers
	 * where the containers are arranged in an order that is explicitly
	 * visual rather than logical (such as buttons for text justification).
	 *
	 * If the direction is set to %GTK_TEXT_DIR_NONE, then the value
	 * set by [func@Gtk.Widget.set_default_direction] will be used.
	 *
	 * Params:
	 *     dir = the new direction
	 */
	public void setDirection(GtkTextDirection dir)
	{
		gtk_widget_set_direction(gtkWidget, dir);
	}

	/**
	 * Set @child as the current focus child of @widget.
	 *
	 * This function is only suitable for widget implementations.
	 * If you want a certain widget to get the input focus, call
	 * [method@Gtk.Widget.grab_focus] on it.
	 *
	 * Params:
	 *     child = a direct child widget of @widget or %NULL
	 *         to unset the focus child of @widget
	 */
	public void setFocusChild(Widget child)
	{
		gtk_widget_set_focus_child(gtkWidget, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets whether the widget should grab focus when it is clicked
	 * with the mouse.
	 *
	 * Making mouse clicks not grab focus is useful in places like
	 * toolbars where you don’t want the keyboard focus removed from
	 * the main area of the application.
	 *
	 * Params:
	 *     focusOnClick = whether the widget should grab focus when clicked
	 *         with the mouse
	 */
	public void setFocusOnClick(bool focusOnClick)
	{
		gtk_widget_set_focus_on_click(gtkWidget, focusOnClick);
	}

	/**
	 * Specifies whether @widget can own the input focus.
	 *
	 * Widget implementations should set @focusable to %TRUE in
	 * their init() function if they want to receive keyboard input.
	 *
	 * Note that having @focusable be %TRUE is only one of the
	 * necessary conditions for being focusable. A widget must
	 * also be sensitive and can-focus and not have an ancestor
	 * that is marked as not can-focus in order to receive input
	 * focus.
	 *
	 * See [method@Gtk.Widget.grab_focus] for actually setting
	 * the input focus on a widget.
	 *
	 * Params:
	 *     focusable = whether or not @widget can own the input focus
	 */
	public void setFocusable(bool focusable)
	{
		gtk_widget_set_focusable(gtkWidget, focusable);
	}

	/**
	 * Sets the font map to use for Pango rendering.
	 *
	 * The font map is the object that is used to look up fonts.
	 * Setting a custom font map can be useful in special situations,
	 * e.g. when you need to add application-specific fonts to the set
	 * of available fonts.
	 *
	 * When not set, the widget will inherit the font map from its parent.
	 *
	 * Params:
	 *     fontMap = a `PangoFontMap`, or %NULL to unset any
	 *         previously set font map
	 */
	public void setFontMap(PgFontMap fontMap)
	{
		gtk_widget_set_font_map(gtkWidget, (fontMap is null) ? null : fontMap.getPgFontMapStruct());
	}

	/**
	 * Sets the `cairo_font_options_t` used for Pango rendering
	 * in this widget.
	 *
	 * When not set, the default font options for the `GdkDisplay`
	 * will be used.
	 *
	 * Params:
	 *     options = a `cairo_font_options_t`
	 *         to unset any previously set default font options
	 */
	public void setFontOptions(FontOption options)
	{
		gtk_widget_set_font_options(gtkWidget, (options is null) ? null : options.getFontOptionStruct());
	}

	/**
	 * Sets the horizontal alignment of @widget.
	 *
	 * Params:
	 *     align_ = the horizontal alignment
	 */
	public void setHalign(GtkAlign align_)
	{
		gtk_widget_set_halign(gtkWidget, align_);
	}

	/**
	 * Sets the `has-tooltip` property on @widget to @has_tooltip.
	 *
	 * Params:
	 *     hasTooltip = whether or not @widget has a tooltip.
	 */
	public void setHasTooltip(bool hasTooltip)
	{
		gtk_widget_set_has_tooltip(gtkWidget, hasTooltip);
	}

	/**
	 * Sets whether the widget would like any available extra horizontal
	 * space.
	 *
	 * When a user resizes a `GtkWindow`, widgets with expand=TRUE
	 * generally receive the extra space. For example, a list or
	 * scrollable area or document in your window would often be set to
	 * expand.
	 *
	 * Call this function to set the expand flag if you would like your
	 * widget to become larger horizontally when the window has extra
	 * room.
	 *
	 * By default, widgets automatically expand if any of their children
	 * want to expand. (To see if a widget will automatically expand given
	 * its current children and state, call [method@Gtk.Widget.compute_expand].
	 * A container can decide how the expandability of children affects the
	 * expansion of the container by overriding the compute_expand virtual
	 * method on `GtkWidget`.).
	 *
	 * Setting hexpand explicitly with this function will override the
	 * automatic expand behavior.
	 *
	 * This function forces the widget to expand or not to expand,
	 * regardless of children.  The override occurs because
	 * [method@Gtk.Widget.set_hexpand] sets the hexpand-set property (see
	 * [method@Gtk.Widget.set_hexpand_set]) which causes the widget’s hexpand
	 * value to be used, rather than looking at children and widget state.
	 *
	 * Params:
	 *     expand = whether to expand
	 */
	public void setHexpand(bool expand)
	{
		gtk_widget_set_hexpand(gtkWidget, expand);
	}

	/**
	 * Sets whether the hexpand flag will be used.
	 *
	 * The [property@Gtk.Widget:hexpand-set] property will be set
	 * automatically when you call [method@Gtk.Widget.set_hexpand]
	 * to set hexpand, so the most likely reason to use this function
	 * would be to unset an explicit expand flag.
	 *
	 * If hexpand is set, then it overrides any computed
	 * expand value based on child widgets. If hexpand is not
	 * set, then the expand value depends on whether any
	 * children of the widget would like to expand.
	 *
	 * There are few reasons to use this function, but it’s here
	 * for completeness and consistency.
	 *
	 * Params:
	 *     set = value for hexpand-set property
	 */
	public void setHexpandSet(bool set)
	{
		gtk_widget_set_hexpand_set(gtkWidget, set);
	}

	/**
	 * Sets the layout manager delegate instance that provides an
	 * implementation for measuring and allocating the children of @widget.
	 *
	 * Params:
	 *     layoutManager = a `GtkLayoutManager`
	 */
	public void setLayoutManager(LayoutManager layoutManager)
	{
		gtk_widget_set_layout_manager(gtkWidget, (layoutManager is null) ? null : layoutManager.getLayoutManagerStruct());
	}

	/**
	 * Sets the bottom margin of @widget.
	 *
	 * Params:
	 *     margin = the bottom margin
	 */
	public void setMarginBottom(int margin)
	{
		gtk_widget_set_margin_bottom(gtkWidget, margin);
	}

	/**
	 * Sets the end margin of @widget.
	 *
	 * Params:
	 *     margin = the end margin
	 */
	public void setMarginEnd(int margin)
	{
		gtk_widget_set_margin_end(gtkWidget, margin);
	}

	/**
	 * Sets the start margin of @widget.
	 *
	 * Params:
	 *     margin = the start margin
	 */
	public void setMarginStart(int margin)
	{
		gtk_widget_set_margin_start(gtkWidget, margin);
	}

	/**
	 * Sets the top margin of @widget.
	 *
	 * Params:
	 *     margin = the top margin
	 */
	public void setMarginTop(int margin)
	{
		gtk_widget_set_margin_top(gtkWidget, margin);
	}

	/**
	 * Sets a widgets name.
	 *
	 * Setting a name allows you to refer to the widget from a
	 * CSS file. You can apply a style to widgets with a particular name
	 * in the CSS file. See the documentation for the CSS syntax (on the
	 * same page as the docs for [class@Gtk.StyleContext].
	 *
	 * Note that the CSS syntax has certain special characters to delimit
	 * and represent elements in a selector (period, #, >, *...), so using
	 * these will make your widget impossible to match by name. Any combination
	 * of alphanumeric symbols, dashes and underscores will suffice.
	 *
	 * Params:
	 *     name = name for the widget
	 */
	public void setName(string name)
	{
		gtk_widget_set_name(gtkWidget, Str.toStringz(name));
	}

	/**
	 * Request the @widget to be rendered partially transparent.
	 *
	 * An opacity of 0 is fully transparent and an opacity of 1
	 * is fully opaque.
	 *
	 * Opacity works on both toplevel widgets and child widgets, although
	 * there are some limitations: For toplevel widgets, applying opacity
	 * depends on the capabilities of the windowing system. On X11, this
	 * has any effect only on X displays with a compositing manager,
	 * see gdk_display_is_composited(). On Windows and Wayland it should
	 * always work, although setting a window’s opacity after the window
	 * has been shown may cause some flicker.
	 *
	 * Note that the opacity is inherited through inclusion — if you set
	 * a toplevel to be partially translucent, all of its content will
	 * appear translucent, since it is ultimatively rendered on that
	 * toplevel. The opacity value itself is not inherited by child
	 * widgets (since that would make widgets deeper in the hierarchy
	 * progressively more translucent). As a consequence, [class@Gtk.Popover]s
	 * and other [iface@Gtk.Native] widgets with their own surface will use their
	 * own opacity value, and thus by default appear non-translucent,
	 * even if they are attached to a toplevel that is translucent.
	 *
	 * Params:
	 *     opacity = desired opacity, between 0 and 1
	 */
	public void setOpacity(double opacity)
	{
		gtk_widget_set_opacity(gtkWidget, opacity);
	}

	/**
	 * Sets how @widget treats content that is drawn outside the
	 * widget's content area.
	 *
	 * See the definition of [enum@Gtk.Overflow] for details.
	 *
	 * This setting is provided for widget implementations and
	 * should not be used by application code.
	 *
	 * The default value is %GTK_OVERFLOW_VISIBLE.
	 *
	 * Params:
	 *     overflow = desired overflow
	 */
	public void setOverflow(GtkOverflow overflow)
	{
		gtk_widget_set_overflow(gtkWidget, overflow);
	}

	/**
	 * Sets @parent as the parent widget of @widget.
	 *
	 * This takes care of details such as updating the state and style
	 * of the child to reflect its new location and resizing the parent.
	 * The opposite function is [method@Gtk.Widget.unparent].
	 *
	 * This function is useful only when implementing subclasses of
	 * `GtkWidget`.
	 *
	 * Params:
	 *     parent = parent widget
	 */
	public void setParent(Widget parent)
	{
		gtk_widget_set_parent(gtkWidget, (parent is null) ? null : parent.getWidgetStruct());
	}

	/**
	 * Specifies whether @widget will be treated as the default
	 * widget within its toplevel when it has the focus, even if
	 * another widget is the default.
	 *
	 * Params:
	 *     receivesDefault = whether or not @widget can be a default widget.
	 */
	public void setReceivesDefault(bool receivesDefault)
	{
		gtk_widget_set_receives_default(gtkWidget, receivesDefault);
	}

	/**
	 * Sets the sensitivity of a widget.
	 *
	 * A widget is sensitive if the user can interact with it.
	 * Insensitive widgets are “grayed out” and the user can’t
	 * interact with them. Insensitive widgets are known as
	 * “inactive”, “disabled”, or “ghosted” in some other toolkits.
	 *
	 * Params:
	 *     sensitive = %TRUE to make the widget sensitive
	 */
	public void setSensitive(bool sensitive)
	{
		gtk_widget_set_sensitive(gtkWidget, sensitive);
	}

	/**
	 * Sets the minimum size of a widget.
	 *
	 * That is, the widget’s size request will be at least @width
	 * by @height. You can use this function to force a widget to
	 * be larger than it normally would be.
	 *
	 * In most cases, [method@Gtk.Window.set_default_size] is a better
	 * choice for toplevel windows than this function; setting the default
	 * size will still allow users to shrink the window. Setting the size
	 * request will force them to leave the window at least as large as
	 * the size request.
	 *
	 * Note the inherent danger of setting any fixed size - themes,
	 * translations into other languages, different fonts, and user action
	 * can all change the appropriate size for a given widget. So, it's
	 * basically impossible to hardcode a size that will always be
	 * correct.
	 *
	 * The size request of a widget is the smallest size a widget can
	 * accept while still functioning well and drawing itself correctly.
	 * However in some strange cases a widget may be allocated less than
	 * its requested size, and in many cases a widget may be allocated more
	 * space than it requested.
	 *
	 * If the size request in a given direction is -1 (unset), then
	 * the “natural” size request of the widget will be used instead.
	 *
	 * The size request set here does not include any margin from the
	 * properties
	 * [property@Gtk.Widget:margin-start],
	 * [property@Gtk.Widget:margin-end],
	 * [property@Gtk.Widget:margin-top], and
	 * [property@Gtk.Widget:margin-bottom], but it does include pretty
	 * much all other padding or border properties set by any subclass
	 * of `GtkWidget`.
	 *
	 * Params:
	 *     width = width @widget should request, or -1 to unset
	 *     height = height @widget should request, or -1 to unset
	 */
	public void setSizeRequest(int width, int height)
	{
		gtk_widget_set_size_request(gtkWidget, width, height);
	}

	/**
	 * Turns on flag values in the current widget state.
	 *
	 * Typical widget states are insensitive, prelighted, etc.
	 *
	 * This function accepts the values %GTK_STATE_FLAG_DIR_LTR and
	 * %GTK_STATE_FLAG_DIR_RTL but ignores them. If you want to set
	 * the widget's direction, use [method@Gtk.Widget.set_direction].
	 *
	 * This function is for use in widget implementations.
	 *
	 * Params:
	 *     flags = State flags to turn on
	 *     clear = Whether to clear state before turning on @flags
	 */
	public void setStateFlags(GtkStateFlags flags, bool clear)
	{
		gtk_widget_set_state_flags(gtkWidget, flags, clear);
	}

	/**
	 * Sets @markup as the contents of the tooltip, which is marked
	 * up with Pango markup.
	 *
	 * This function will take care of setting the
	 * [property@Gtk.Widget:has-tooltip] as a side effect, and of the
	 * default handler for the [signal@Gtk.Widget::query-tooltip] signal.
	 *
	 * See also [method@Gtk.Tooltip.set_markup].
	 *
	 * Params:
	 *     markup = the contents of the tooltip for @widget
	 */
	public void setTooltipMarkup(string markup)
	{
		gtk_widget_set_tooltip_markup(gtkWidget, Str.toStringz(markup));
	}

	/**
	 * Sets @text as the contents of the tooltip.
	 *
	 * If @text contains any markup, it will be escaped.
	 *
	 * This function will take care of setting
	 * [property@Gtk.Widget:has-tooltip] as a side effect,
	 * and of the default handler for the
	 * [signal@Gtk.Widget::query-tooltip] signal.
	 *
	 * See also [method@Gtk.Tooltip.set_text].
	 *
	 * Params:
	 *     text = the contents of the tooltip for @widget
	 */
	public void setTooltipText(string text)
	{
		gtk_widget_set_tooltip_text(gtkWidget, Str.toStringz(text));
	}

	/**
	 * Sets the vertical alignment of @widget.
	 *
	 * Params:
	 *     align_ = the vertical alignment
	 */
	public void setValign(GtkAlign align_)
	{
		gtk_widget_set_valign(gtkWidget, align_);
	}

	/**
	 * Sets whether the widget would like any available extra vertical
	 * space.
	 *
	 * See [method@Gtk.Widget.set_hexpand] for more detail.
	 *
	 * Params:
	 *     expand = whether to expand
	 */
	public void setVexpand(bool expand)
	{
		gtk_widget_set_vexpand(gtkWidget, expand);
	}

	/**
	 * Sets whether the vexpand flag will be used.
	 *
	 * See [method@Gtk.Widget.set_hexpand_set] for more detail.
	 *
	 * Params:
	 *     set = value for vexpand-set property
	 */
	public void setVexpandSet(bool set)
	{
		gtk_widget_set_vexpand_set(gtkWidget, set);
	}

	/**
	 * Sets the visibility state of @widget.
	 *
	 * Note that setting this to %TRUE doesn’t mean the widget is
	 * actually viewable, see [method@Gtk.Widget.get_visible].
	 *
	 * This function simply calls [method@Gtk.Widget.show] or
	 * [method@Gtk.Widget.hide] but is nicer to use when the
	 * visibility of the widget depends on some condition.
	 *
	 * Params:
	 *     visible = whether the widget should be shown or not
	 */
	public void setVisible(bool visible)
	{
		gtk_widget_set_visible(gtkWidget, visible);
	}

	/**
	 * Returns whether @widget should contribute to
	 * the measuring and allocation of its parent.
	 *
	 * This is %FALSE for invisible children, but also
	 * for children that have their own surface.
	 *
	 * Returns: %TRUE if child should be included in
	 *     measuring and allocating
	 */
	public bool shouldLayout()
	{
		return gtk_widget_should_layout(gtkWidget) != 0;
	}

	/**
	 * Flags a widget to be displayed.
	 *
	 * Any widget that isn’t shown will not appear on the screen.
	 *
	 * Remember that you have to show the containers containing a widget,
	 * in addition to the widget itself, before it will appear onscreen.
	 *
	 * When a toplevel container is shown, it is immediately realized and
	 * mapped; other shown widgets are realized and mapped when their
	 * toplevel container is realized and mapped.
	 */
	public void show()
	{
		gtk_widget_show(gtkWidget);
	}

	/**
	 * Allocates widget with a transformation that translates
	 * the origin to the position in @allocation.
	 *
	 * This is a simple form of [method@Gtk.Widget.allocate].
	 *
	 * Params:
	 *     allocation = position and size to be allocated to @widget
	 *     baseline = The baseline of the child, or -1
	 */
	public void sizeAllocate(GtkAllocation* allocation, int baseline)
	{
		gtk_widget_size_allocate(gtkWidget, allocation, baseline);
	}

	/**
	 * Snapshot the a child of @widget.
	 *
	 * When a widget receives a call to the snapshot function,
	 * it must send synthetic [vfunc@Gtk.Widget.snapshot] calls
	 * to all children. This function provides a convenient way
	 * of doing this. A widget, when it receives a call to its
	 * [vfunc@Gtk.Widget.snapshot] function, calls
	 * gtk_widget_snapshot_child() once for each child, passing in
	 * the @snapshot the widget received.
	 *
	 * gtk_widget_snapshot_child() takes care of translating the origin of
	 * @snapshot, and deciding whether the child needs to be snapshot.
	 *
	 * This function does nothing for children that implement `GtkNative`.
	 *
	 * Params:
	 *     child = a child of @widget
	 *     snapshot = `GtkSnapshot` as passed to the widget. In particular, no
	 *         calls to gtk_snapshot_translate() or other transform calls should
	 *         have been made.
	 */
	public void snapshotChild(Widget child, Snapshot snapshot)
	{
		gtk_widget_snapshot_child(gtkWidget, (child is null) ? null : child.getWidgetStruct(), (snapshot is null) ? null : snapshot.getGtkSnapshotStruct());
	}

	/**
	 * Translate coordinates relative to @src_widget’s allocation
	 * to coordinates relative to @dest_widget’s allocations.
	 *
	 * In order to perform this operation, both widget must share
	 * a common ancestor.
	 *
	 * Params:
	 *     destWidget = a `GtkWidget`
	 *     srcX = X position relative to @src_widget
	 *     srcY = Y position relative to @src_widget
	 *     destX = location to store X position relative to @dest_widget
	 *     destY = location to store Y position relative to @dest_widget
	 *
	 * Returns: %FALSE if @src_widget and @dest_widget have no common
	 *     ancestor. In this case, 0 is stored in *@dest_x and *@dest_y.
	 *     Otherwise %TRUE.
	 */
	public bool translateCoordinates(Widget destWidget, double srcX, double srcY, out double destX, out double destY)
	{
		return gtk_widget_translate_coordinates(gtkWidget, (destWidget is null) ? null : destWidget.getWidgetStruct(), srcX, srcY, &destX, &destY) != 0;
	}

	/**
	 * Triggers a tooltip query on the display where the toplevel
	 * of @widget is located.
	 */
	public void triggerTooltipQuery()
	{
		gtk_widget_trigger_tooltip_query(gtkWidget);
	}

	/**
	 * Causes a widget to be unmapped if it’s currently mapped.
	 *
	 * This function is only for use in widget implementations.
	 */
	public void unmap()
	{
		gtk_widget_unmap(gtkWidget);
	}

	/**
	 * Dissociate @widget from its parent.
	 *
	 * This function is only for use in widget implementations,
	 * typically in dispose.
	 */
	public void unparent()
	{
		gtk_widget_unparent(gtkWidget);
	}

	/**
	 * Causes a widget to be unrealized (frees all GDK resources
	 * associated with the widget).
	 *
	 * This function is only useful in widget implementations.
	 */
	public void unrealize()
	{
		gtk_widget_unrealize(gtkWidget);
	}

	/**
	 * Turns off flag values for the current widget state.
	 *
	 * See [method@Gtk.Widget.set_state_flags].
	 *
	 * This function is for use in widget implementations.
	 *
	 * Params:
	 *     flags = State flags to turn off
	 */
	public void unsetStateFlags(GtkStateFlags flags)
	{
		gtk_widget_unset_state_flags(gtkWidget, flags);
	}

	/**
	 * Signals that all holders of a reference to the widget should release
	 * the reference that they hold.
	 *
	 * May result in finalization of the widget if all references are released.
	 *
	 * This signal is not suitable for saving widget state.
	 */
	gulong addOnDestroy(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "destroy", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the text direction of a widget changes.
	 *
	 * Params:
	 *     previousDirection = the previous text direction of @widget
	 */
	gulong addOnDirectionChanged(void delegate(GtkTextDirection, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "direction-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when @widget is hidden.
	 */
	gulong addOnHide(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "hide", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted if keyboard navigation fails.
	 *
	 * See [method@Gtk.Widget.keynav_failed] for details.
	 *
	 * Params:
	 *     direction = the direction of movement
	 *
	 * Returns: %TRUE if stopping keyboard navigation is fine, %FALSE
	 *     if the emitting widget should try to handle the keyboard
	 *     navigation attempt in its parent widget(s).
	 */
	gulong addOnKeynavFailed(bool delegate(GtkDirectionType, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "keynav-failed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when @widget is going to be mapped.
	 *
	 * A widget is mapped when the widget is visible (which is controlled with
	 * [property@Gtk.Widget:visible]) and all its parents up to the toplevel widget
	 * are also visible.
	 *
	 * The ::map signal can be used to determine whether a widget will be drawn,
	 * for instance it can resume an animation that was stopped during the
	 * emission of [signal@Gtk.Widget::unmap].
	 */
	gulong addOnMap(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "map", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a widget is activated via a mnemonic.
	 *
	 * The default handler for this signal activates @widget if @group_cycling
	 * is %FALSE, or just makes @widget grab focus if @group_cycling is %TRUE.
	 *
	 * Params:
	 *     groupCycling = %TRUE if there are other widgets with the same mnemonic
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to propagate the event further.
	 */
	gulong addOnMnemonicActivate(bool delegate(bool, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "mnemonic-activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the focus is moved.
	 *
	 * Params:
	 *     direction = the direction of the focus move
	 */
	gulong addOnMoveFocus(void delegate(GtkDirectionType, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-focus", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the widgets tooltip is about to be shown.
	 *
	 * This happens when the [property@Gtk.Widget:has-tooltip] property
	 * is %TRUE and the hover timeout has expired with the cursor hovering
	 * "above" @widget; or emitted when @widget got focus in keyboard mode.
	 *
	 * Using the given coordinates, the signal handler should determine
	 * whether a tooltip should be shown for @widget. If this is the case
	 * %TRUE should be returned, %FALSE otherwise.  Note that if
	 * @keyboard_mode is %TRUE, the values of @x and @y are undefined and
	 * should not be used.
	 *
	 * The signal handler is free to manipulate @tooltip with the therefore
	 * destined function calls.
	 *
	 * Params:
	 *     x = the x coordinate of the cursor position where the request has
	 *         been emitted, relative to @widget's left side
	 *     y = the y coordinate of the cursor position where the request has
	 *         been emitted, relative to @widget's top
	 *     keyboardMode = %TRUE if the tooltip was triggered using the keyboard
	 *     tooltip = a `GtkTooltip`
	 *
	 * Returns: %TRUE if @tooltip should be shown right now, %FALSE otherwise.
	 */
	gulong addOnQueryTooltip(bool delegate(int, int, bool, Tooltip, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "query-tooltip", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when @widget is associated with a `GdkSurface`.
	 *
	 * This means that [method@Gtk.Widget.realize] has been called
	 * or the widget has been mapped (that is, it is going to be drawn).
	 */
	gulong addOnRealize(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "realize", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when @widget is shown.
	 */
	gulong addOnShow(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "show", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the widget state changes.
	 *
	 * See [method@Gtk.Widget.get_state_flags].
	 *
	 * Params:
	 *     flags = The previous state flags.
	 */
	gulong addOnStateFlagsChanged(void delegate(GtkStateFlags, Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "state-flags-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when @widget is going to be unmapped.
	 *
	 * A widget is unmapped when either it or any of its parents up to the
	 * toplevel widget have been set as hidden.
	 *
	 * As ::unmap indicates that a widget will not be shown any longer,
	 * it can be used to, for example, stop an animation on the widget.
	 */
	gulong addOnUnmap(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "unmap", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the `GdkSurface` associated with @widget is destroyed.
	 *
	 * This means that [method@Gtk.Widget.unrealize] has been called
	 * or the widget has been unmapped (that is, it is going to be hidden).
	 */
	gulong addOnUnrealize(void delegate(Widget) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "unrealize", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
