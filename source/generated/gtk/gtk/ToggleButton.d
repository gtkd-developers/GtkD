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


module gtk.ToggleButton;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Button;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * A `GtkToggleButton` is a button which remains “pressed-in” when
 * clicked.
 * 
 * Clicking again will cause the toggle button to return to its normal state.
 * 
 * A toggle button is created by calling either [ctor@Gtk.ToggleButton.new] or
 * [ctor@Gtk.ToggleButton.new_with_label]. If using the former, it is advisable
 * to pack a widget, (such as a `GtkLabel` and/or a `GtkImage`), into the toggle
 * button’s container. (See [class@Gtk.Button] for more information).
 * 
 * The state of a `GtkToggleButton` can be set specifically using
 * [method@Gtk.ToggleButton.set_active], and retrieved using
 * [method@Gtk.ToggleButton.get_active].
 * 
 * To simply switch the state of a toggle button, use
 * [method@Gtk.ToggleButton.toggled].
 * 
 * ## Grouping
 * 
 * Toggle buttons can be grouped together, to form mutually exclusive
 * groups - only one of the buttons can be toggled at a time, and toggling
 * another one will switch the currently toggled one off.
 * 
 * To add a `GtkToggleButton` to a group, use [method@Gtk.ToggleButton.set_group].
 * 
 * ## CSS nodes
 * 
 * `GtkToggleButton` has a single CSS node with name button. To differentiate
 * it from a plain `GtkButton`, it gets the `.toggle` style class.
 * 
 * ## Creating two `GtkToggleButton` widgets.
 * 
 * ```c
 * static void
 * output_state (GtkToggleButton *source,
 * gpointer         user_data)
 * {
 * g_print ("Toggle button "%s" is active: %s",
 * gtk_button_get_label (GTK_BUTTON (source)),
 * gtk_toggle_button_get_active (source) ? "Yes" : "No");
 * }
 * 
 * static void
 * make_toggles (void)
 * {
 * GtkWidget *window, *toggle1, *toggle2;
 * GtkWidget *box;
 * const char *text;
 * 
 * window = gtk_window_new ();
 * box = gtk_box_new (GTK_ORIENTATION_VERTICAL, 12);
 * 
 * text = "Hi, I’m toggle button one";
 * toggle1 = gtk_toggle_button_new_with_label (text);
 * 
 * g_signal_connect (toggle1, "toggled",
 * G_CALLBACK (output_state),
 * NULL);
 * gtk_box_append (GTK_BOX (box), toggle1);
 * 
 * text = "Hi, I’m toggle button two";
 * toggle2 = gtk_toggle_button_new_with_label (text);
 * g_signal_connect (toggle2, "toggled",
 * G_CALLBACK (output_state),
 * NULL);
 * gtk_box_append (GTK_BOX (box), toggle2);
 * 
 * gtk_window_set_child (GTK_WINDOW (window), box);
 * gtk_widget_show (window);
 * }
 * ```
 */
public class ToggleButton : Button
{
	/** the main Gtk struct */
	protected GtkToggleButton* gtkToggleButton;

	/** Get the main Gtk struct */
	public GtkToggleButton* getToggleButtonStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkToggleButton;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkToggleButton;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkToggleButton* gtkToggleButton, bool ownedRef = false)
	{
		this.gtkToggleButton = gtkToggleButton;
		super(cast(GtkButton*)gtkToggleButton, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_toggle_button_get_type();
	}

	/**
	 * Creates a new toggle button.
	 *
	 * A widget should be packed into the button, as in [ctor@Gtk.Button.new].
	 *
	 * Returns: a new toggle button.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_toggle_button_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkToggleButton*) __p);
	}

	/**
	 * Creates a new `GtkToggleButton` containing a label.
	 *
	 * The label will be created using [ctor@Gtk.Label.new_with_mnemonic],
	 * so underscores in @label indicate the mnemonic for the button.
	 *
	 * Params:
	 *     label = the text of the button, with an underscore in front of the
	 *         mnemonic character
	 *
	 * Returns: a new `GtkToggleButton`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string label)
	{
		auto __p = gtk_toggle_button_new_with_mnemonic(Str.toStringz(label));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_mnemonic");
		}

		this(cast(GtkToggleButton*) __p);
	}

	/**
	 * Queries a `GtkToggleButton` and returns its current state.
	 *
	 * Returns %TRUE if the toggle button is pressed in and %FALSE
	 * if it is raised.
	 *
	 * Returns: whether the button is pressed
	 */
	public bool getActive()
	{
		return gtk_toggle_button_get_active(gtkToggleButton) != 0;
	}

	/**
	 * Sets the status of the toggle button.
	 *
	 * Set to %TRUE if you want the `GtkToggleButton` to be “pressed in”,
	 * and %FALSE to raise it.
	 *
	 * If the status of the button changes, this action causes the
	 * [signal@GtkToggleButton::toggled] signal to be emitted.
	 *
	 * Params:
	 *     isActive = %TRUE or %FALSE.
	 */
	public void setActive(bool isActive)
	{
		gtk_toggle_button_set_active(gtkToggleButton, isActive);
	}

	/**
	 * Adds @self to the group of @group.
	 *
	 * In a group of multiple toggle buttons, only one button can be active
	 * at a time.
	 *
	 * Setting up groups in a cycle leads to undefined behavior.
	 *
	 * Note that the same effect can be achieved via the [iface@Gtk.Actionable]
	 * API, by using the same action with parameter type and state type 's'
	 * for all buttons in the group, and giving each button its own target
	 * value.
	 *
	 * Params:
	 *     group = another `GtkToggleButton` to
	 *         form a group with
	 */
	public void setGroup(ToggleButton group)
	{
		gtk_toggle_button_set_group(gtkToggleButton, (group is null) ? null : group.getToggleButtonStruct());
	}

	/**
	 * Emits the ::toggled signal on the `GtkToggleButton`.
	 *
	 * There is no good reason for an application ever to call this function.
	 */
	public void toggled()
	{
		gtk_toggle_button_toggled(gtkToggleButton);
	}

	/**
	 * Emitted whenever the `GtkToggleButton`'s state is changed.
	 */
	gulong addOnToggled(void delegate(ToggleButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "toggled", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
