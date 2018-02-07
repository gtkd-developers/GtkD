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
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * A #GtkToggleButton is a #GtkButton which will remain “pressed-in” when
 * clicked. Clicking again will cause the toggle button to return to its
 * normal state.
 * 
 * A toggle button is created by calling either gtk_toggle_button_new() or
 * gtk_toggle_button_new_with_label(). If using the former, it is advisable to
 * pack a widget, (such as a #GtkLabel and/or a #GtkImage), into the toggle
 * button’s container. (See #GtkButton for more information).
 * 
 * The state of a #GtkToggleButton can be set specifically using
 * gtk_toggle_button_set_active(), and retrieved using
 * gtk_toggle_button_get_active().
 * 
 * To simply switch the state of a toggle button, use gtk_toggle_button_toggled().
 * 
 * # CSS nodes
 * 
 * GtkToggleButton has a single CSS node with name button. To differentiate
 * it from a plain #GtkButton, it gets the .toggle style class.
 * 
 * ## Creating two #GtkToggleButton widgets.
 * 
 * |[<!-- language="C" -->
 * static void output_state (GtkToggleButton *source, gpointer user_data) {
 * printf ("Active: %d\n", gtk_toggle_button_get_active (source));
 * }
 * 
 * void make_toggles (void) {
 * GtkWidget *window, *toggle1, *toggle2;
 * GtkWidget *box;
 * const char *text;
 * 
 * window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
 * box = gtk_box_new (GTK_ORIENTATION_VERTICAL, 12);
 * 
 * text = "Hi, I’m a toggle button.";
 * toggle1 = gtk_toggle_button_new_with_label (text);
 * 
 * // Makes this toggle button invisible
 * gtk_toggle_button_set_mode (GTK_TOGGLE_BUTTON (toggle1),
 * TRUE);
 * 
 * g_signal_connect (toggle1, "toggled",
 * G_CALLBACK (output_state),
 * NULL);
 * gtk_container_add (GTK_CONTAINER (box), toggle1);
 * 
 * text = "Hi, I’m a toggle button.";
 * toggle2 = gtk_toggle_button_new_with_label (text);
 * gtk_toggle_button_set_mode (GTK_TOGGLE_BUTTON (toggle2),
 * FALSE);
 * g_signal_connect (toggle2, "toggled",
 * G_CALLBACK (output_state),
 * NULL);
 * gtk_container_add (GTK_CONTAINER (box), toggle2);
 * 
 * gtk_container_add (GTK_CONTAINER (window), box);
 * gtk_widget_show_all (window);
 * }
 * ]|
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

	/**
	 * Creates a new toggle button with a text label.
	 * Params:
	 *  label = a string containing the message to be placed in the toggle button.
	 *  mnemonic =  if true the label
	 *  will be created using gtk_label_new_with_mnemonic(), so underscores
	 *  in label indicate the mnemonic for the button.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string label, bool mnemonic=true)
	{
		GtkToggleButton* p;

		if ( mnemonic )
		{
			// GtkWidget* gtk_toggle_button_new_with_mnemonic  (const gchar *label);
			p = cast(GtkToggleButton*)gtk_toggle_button_new_with_mnemonic(Str.toStringz(label));
		}
		else
		{
			// GtkWidget* gtk_toggle_button_new_with_label  (const gchar *label);
			p = cast(GtkToggleButton*)gtk_toggle_button_new_with_label(Str.toStringz(label));
		}

		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_toggle_button_new_");
		}

		this(p);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_toggle_button_get_type();
	}

	/**
	 * Creates a new toggle button. A widget should be packed into the button, as in gtk_button_new().
	 *
	 * Returns: a new toggle button.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_toggle_button_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkToggleButton*) p);
	}

	/**
	 * Queries a #GtkToggleButton and returns its current state. Returns %TRUE if
	 * the toggle button is pressed in and %FALSE if it is raised.
	 *
	 * Returns: a #gboolean value.
	 */
	public bool getActive()
	{
		return gtk_toggle_button_get_active(gtkToggleButton) != 0;
	}

	/**
	 * Gets the value set by gtk_toggle_button_set_inconsistent().
	 *
	 * Returns: %TRUE if the button is displayed as inconsistent, %FALSE otherwise
	 */
	public bool getInconsistent()
	{
		return gtk_toggle_button_get_inconsistent(gtkToggleButton) != 0;
	}

	/**
	 * Retrieves whether the button is displayed as a separate indicator
	 * and label. See gtk_toggle_button_set_mode().
	 *
	 * Returns: %TRUE if the togglebutton is drawn as a separate indicator
	 *     and label.
	 */
	public bool getMode()
	{
		return gtk_toggle_button_get_mode(gtkToggleButton) != 0;
	}

	/**
	 * Sets the status of the toggle button. Set to %TRUE if you want the
	 * GtkToggleButton to be “pressed in”, and %FALSE to raise it.
	 * This action causes the #GtkToggleButton::toggled signal and the
	 * #GtkButton::clicked signal to be emitted.
	 *
	 * Params:
	 *     isActive = %TRUE or %FALSE.
	 */
	public void setActive(bool isActive)
	{
		gtk_toggle_button_set_active(gtkToggleButton, isActive);
	}

	/**
	 * If the user has selected a range of elements (such as some text or
	 * spreadsheet cells) that are affected by a toggle button, and the
	 * current values in that range are inconsistent, you may want to
	 * display the toggle in an “in between” state. This function turns on
	 * “in between” display.  Normally you would turn off the inconsistent
	 * state again if the user toggles the toggle button. This has to be
	 * done manually, gtk_toggle_button_set_inconsistent() only affects
	 * visual appearance, it doesn’t affect the semantics of the button.
	 *
	 * Params:
	 *     setting = %TRUE if state is inconsistent
	 */
	public void setInconsistent(bool setting)
	{
		gtk_toggle_button_set_inconsistent(gtkToggleButton, setting);
	}

	/**
	 * Sets whether the button is displayed as a separate indicator and label.
	 * You can call this function on a checkbutton or a radiobutton with
	 * @draw_indicator = %FALSE to make the button look like a normal button.
	 *
	 * This can be used to create linked strip of buttons that work like
	 * a #GtkStackSwitcher.
	 *
	 * This function only affects instances of classes like #GtkCheckButton
	 * and #GtkRadioButton that derive from #GtkToggleButton,
	 * not instances of #GtkToggleButton itself.
	 *
	 * Params:
	 *     drawIndicator = if %TRUE, draw the button as a separate indicator
	 *         and label; if %FALSE, draw the button like a normal button
	 */
	public void setMode(bool drawIndicator)
	{
		gtk_toggle_button_set_mode(gtkToggleButton, drawIndicator);
	}

	/**
	 * Emits the #GtkToggleButton::toggled signal on the
	 * #GtkToggleButton. There is no good reason for an
	 * application ever to call this function.
	 */
	public void toggled()
	{
		gtk_toggle_button_toggled(gtkToggleButton);
	}

	/**
	 * Should be connected if you wish to perform an action whenever the
	 * #GtkToggleButton's state is changed.
	 */
	gulong addOnToggled(void delegate(ToggleButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "toggled", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
