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


module gtk.Testing;

private import glib.Str;
private import gobject.ObjectG;
private import gtk.SpinButton;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public struct Testing
{
	/**
	 * This function is used to initialize a GTK+ test program.
	 * It will in turn call testInit() and init() to
	 * properly initialize the testing framework and graphical toolkit.
	 * It'll also set the program's locale to "C" and prevent loading of
	 * rc files and Gtk+ modules. This is done to make the test program environments as deterministic as possible.
	 * Like init() any known arguments will be processed and stripped from and argv.
	 * Params:
	 *  argv = The argv parameter of main(). Any parameters understood by testInit() or init() are stripped before return.
	 */
	public static void testInit(ref string[] argv)
	{
		// void gtk_test_init(int *argcp, char ***argvp, ...);
		char** outargv = Str.toStringzArray(argv);
		int argc = cast(int) argv.length;

		gtk_test_init(&argc, &outargv, null);

		argv = Str.toStringArray(outargv);
	}

	/**
	 */

	/**
	 * Create a simple window with window title @window_title and
	 * text contents @dialog_text.
	 * The window will quit any running gtk_main()-loop when destroyed, and it
	 * will automatically be destroyed upon test function teardown.
	 *
	 * Deprecated: This testing infrastructure is phased out in favor of reftests.
	 *
	 * Params:
	 *     windowTitle = Title of the window to be displayed.
	 *     dialogText = Text inside the window to be displayed.
	 *
	 * Returns: a widget pointer to the newly created GtkWindow.
	 *
	 * Since: 2.14
	 */
	public static Widget createSimpleWindow(string windowTitle, string dialogText)
	{
		auto p = gtk_test_create_simple_window(Str.toStringz(windowTitle), Str.toStringz(dialogText));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * This function will search @widget and all its descendants for a GtkLabel
	 * widget with a text string matching @label_pattern.
	 * The @label_pattern may contain asterisks “*” and question marks “?” as
	 * placeholders, g_pattern_match() is used for the matching.
	 * Note that locales other than "C“ tend to alter (translate” label strings,
	 * so this function is genrally only useful in test programs with
	 * predetermined locales, see gtk_test_init() for more details.
	 *
	 * Params:
	 *     widget = Valid label or container widget.
	 *     labelPattern = Shell-glob pattern to match a label string.
	 *
	 * Returns: a GtkLabel widget if any is found.
	 *
	 * Since: 2.14
	 */
	public static Widget findLabel(Widget widget, string labelPattern)
	{
		auto p = gtk_test_find_label((widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(labelPattern));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * This function will search siblings of @base_widget and siblings of its
	 * ancestors for all widgets matching @widget_type.
	 * Of the matching widgets, the one that is geometrically closest to
	 * @base_widget will be returned.
	 * The general purpose of this function is to find the most likely “action”
	 * widget, relative to another labeling widget. Such as finding a
	 * button or text entry widget, given its corresponding label widget.
	 *
	 * Params:
	 *     baseWidget = Valid widget, part of a widget hierarchy
	 *     widgetType = Type of a aearched for sibling widget
	 *
	 * Returns: a widget of type @widget_type if any is found.
	 *
	 * Since: 2.14
	 */
	public static Widget findSibling(Widget baseWidget, GType widgetType)
	{
		auto p = gtk_test_find_sibling((baseWidget is null) ? null : baseWidget.getWidgetStruct(), widgetType);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * This function will search the descendants of @widget for a widget
	 * of type @widget_type that has a label matching @label_pattern next
	 * to it. This is most useful for automated GUI testing, e.g. to find
	 * the “OK” button in a dialog and synthesize clicks on it.
	 * However see gtk_test_find_label(), gtk_test_find_sibling() and
	 * gtk_test_widget_click() for possible caveats involving the search of
	 * such widgets and synthesizing widget events.
	 *
	 * Params:
	 *     widget = Container widget, usually a GtkWindow.
	 *     labelPattern = Shell-glob pattern to match a label string.
	 *     widgetType = Type of a aearched for label sibling widget.
	 *
	 * Returns: a valid widget if any is found or %NULL.
	 *
	 * Since: 2.14
	 */
	public static Widget findWidget(Widget widget, string labelPattern, GType widgetType)
	{
		auto p = gtk_test_find_widget((widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(labelPattern), widgetType);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Return the type ids that have been registered after
	 * calling gtk_test_register_all_types().
	 *
	 * Returns: 0-terminated array of type ids
	 *
	 * Since: 2.14
	 */
	public static GType[] listAllTypes()
	{
		uint nTypes;

		auto p = gtk_test_list_all_types(&nTypes);

		return p[0 .. nTypes];
	}

	/**
	 * Force registration of all core Gtk+ and Gdk object types.
	 * This allowes to refer to any of those object types via
	 * g_type_from_name() after calling this function.
	 *
	 * Since: 2.14
	 */
	public static void registerAllTypes()
	{
		gtk_test_register_all_types();
	}

	/**
	 * Retrive the literal adjustment value for GtkRange based
	 * widgets and spin buttons. Note that the value returned by
	 * this function is anything between the lower and upper bounds
	 * of the adjustment belonging to @widget, and is not a percentage
	 * as passed in to gtk_test_slider_set_perc().
	 *
	 * Deprecated: This testing infrastructure is phased out in favor of reftests.
	 *
	 * Params:
	 *     widget = valid widget pointer.
	 *
	 * Returns: gtk_adjustment_get_value (adjustment) for an adjustment belonging to @widget.
	 *
	 * Since: 2.14
	 */
	public static double sliderGetValue(Widget widget)
	{
		return gtk_test_slider_get_value((widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * This function will adjust the slider position of all GtkRange
	 * based widgets, such as scrollbars or scales, it’ll also adjust
	 * spin buttons. The adjustment value of these widgets is set to
	 * a value between the lower and upper limits, according to the
	 * @percentage argument.
	 *
	 * Deprecated: This testing infrastructure is phased out in favor of reftests.
	 *
	 * Params:
	 *     widget = valid widget pointer.
	 *     percentage = value between 0 and 100.
	 *
	 * Since: 2.14
	 */
	public static void sliderSetPerc(Widget widget, double percentage)
	{
		gtk_test_slider_set_perc((widget is null) ? null : widget.getWidgetStruct(), percentage);
	}

	/**
	 * This function will generate a @button click in the upwards or downwards
	 * spin button arrow areas, usually leading to an increase or decrease of
	 * spin button’s value.
	 *
	 * Deprecated: This testing infrastructure is phased out in favor of reftests.
	 *
	 * Params:
	 *     spinner = valid GtkSpinButton widget.
	 *     button = Number of the pointer button for the event, usually 1, 2 or 3.
	 *     upwards = %TRUE for upwards arrow click, %FALSE for downwards arrow click.
	 *
	 * Returns: whether all actions neccessary for the button click simulation were carried out successfully.
	 *
	 * Since: 2.14
	 */
	public static bool spinButtonClick(SpinButton spinner, uint button, bool upwards)
	{
		return gtk_test_spin_button_click((spinner is null) ? null : spinner.getSpinButtonStruct(), button, upwards) != 0;
	}

	/**
	 * Retrive the text string of @widget if it is a GtkLabel,
	 * GtkEditable (entry and text widgets) or GtkTextView.
	 *
	 * Deprecated: This testing infrastructure is phased out in favor of reftests.
	 *
	 * Params:
	 *     widget = valid widget pointer.
	 *
	 * Returns: new 0-terminated C string, needs to be released with g_free().
	 *
	 * Since: 2.14
	 */
	public static string textGet(Widget widget)
	{
		auto retStr = gtk_test_text_get((widget is null) ? null : widget.getWidgetStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Set the text string of @widget to @string if it is a GtkLabel,
	 * GtkEditable (entry and text widgets) or GtkTextView.
	 *
	 * Deprecated: This testing infrastructure is phased out in favor of reftests.
	 *
	 * Params:
	 *     widget = valid widget pointer.
	 *     string_ = a 0-terminated C string
	 *
	 * Since: 2.14
	 */
	public static void textSet(Widget widget, string string_)
	{
		gtk_test_text_set((widget is null) ? null : widget.getWidgetStruct(), Str.toStringz(string_));
	}

	/**
	 * This function will generate a @button click (button press and button
	 * release event) in the middle of the first GdkWindow found that belongs
	 * to @widget.
	 * For windowless widgets like #GtkButton (which returns %FALSE from
	 * gtk_widget_get_has_window()), this will often be an
	 * input-only event window. For other widgets, this is usually widget->window.
	 * Certain caveats should be considered when using this function, in
	 * particular because the mouse pointer is warped to the button click
	 * location, see gdk_test_simulate_button() for details.
	 *
	 * Deprecated: This testing infrastructure is phased out in favor of reftests.
	 *
	 * Params:
	 *     widget = Widget to generate a button click on.
	 *     button = Number of the pointer button for the event, usually 1, 2 or 3.
	 *     modifiers = Keyboard modifiers the event is setup with.
	 *
	 * Returns: whether all actions neccessary for the button click simulation were carried out successfully.
	 *
	 * Since: 2.14
	 */
	public static bool widgetClick(Widget widget, uint button, GdkModifierType modifiers)
	{
		return gtk_test_widget_click((widget is null) ? null : widget.getWidgetStruct(), button, modifiers) != 0;
	}

	/**
	 * This function will generate keyboard press and release events in
	 * the middle of the first GdkWindow found that belongs to @widget.
	 * For windowless widgets like #GtkButton (which returns %FALSE from
	 * gtk_widget_get_has_window()), this will often be an
	 * input-only event window. For other widgets, this is usually widget->window.
	 * Certain caveats should be considered when using this function, in
	 * particular because the mouse pointer is warped to the key press
	 * location, see gdk_test_simulate_key() for details.
	 *
	 * Params:
	 *     widget = Widget to generate a key press and release on.
	 *     keyval = A Gdk keyboard value.
	 *     modifiers = Keyboard modifiers the event is setup with.
	 *
	 * Returns: whether all actions neccessary for the key event simulation were carried out successfully.
	 *
	 * Since: 2.14
	 */
	public static bool widgetSendKey(Widget widget, uint keyval, GdkModifierType modifiers)
	{
		return gtk_test_widget_send_key((widget is null) ? null : widget.getWidgetStruct(), keyval, modifiers) != 0;
	}

	/**
	 * Enters the main loop and waits for @widget to be “drawn”. In this
	 * context that means it waits for the frame clock of @widget to have
	 * run a full styling, layout and drawing cycle.
	 *
	 * This function is intended to be used for syncing with actions that
	 * depend on @widget relayouting or on interaction with the display
	 * server.
	 *
	 * Params:
	 *     widget = the widget to wait for
	 *
	 * Since: 3.10
	 */
	public static void widgetWaitForDraw(Widget widget)
	{
		gtk_test_widget_wait_for_draw((widget is null) ? null : widget.getWidgetStruct());
	}
}
