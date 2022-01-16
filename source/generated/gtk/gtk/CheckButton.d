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


module gtk.CheckButton;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.ActionableIF;
private import gtk.ActionableT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * A `GtkCheckButton` places a label next to an indicator.
 * 
 * ![Example GtkCheckButtons](check-button.png)
 * 
 * A `GtkCheckButton` is created by calling either [ctor@Gtk.CheckButton.new]
 * or [ctor@Gtk.CheckButton.new_with_label].
 * 
 * The state of a `GtkCheckButton` can be set specifically using
 * [method@Gtk.CheckButton.set_active], and retrieved using
 * [method@Gtk.CheckButton.get_active].
 * 
 * # Inconsistent state
 * 
 * In addition to "on" and "off", check buttons can be an
 * "in between" state that is neither on nor off. This can be used
 * e.g. when the user has selected a range of elements (such as some
 * text or spreadsheet cells) that are affected by a check button,
 * and the current values in that range are inconsistent.
 * 
 * To set a `GtkCheckButton` to inconsistent state, use
 * [method@Gtk.CheckButton.set_inconsistent].
 * 
 * # Grouping
 * 
 * Check buttons can be grouped together, to form mutually exclusive
 * groups - only one of the buttons can be toggled at a time, and toggling
 * another one will switch the currently toggled one off.
 * 
 * Grouped check buttons use a different indicator, and are commonly referred
 * to as *radio buttons*.
 * 
 * ![Example GtkCheckButtons](radio-button.png)
 * 
 * To add a `GtkCheckButton` to a group, use [method@Gtk.CheckButton.set_group].
 * 
 * # CSS nodes
 * 
 * ```
 * checkbutton[.text-button]
 * ├── check
 * ╰── [label]
 * ```
 * 
 * A `GtkCheckButton` has a main node with name checkbutton. If the
 * [property@Gtk.CheckButton:label] property is set, it contains a label
 * child. The indicator node is named check when no group is set, and
 * radio if the checkbutton is grouped together with other checkbuttons.
 * 
 * # Accessibility
 * 
 * `GtkCheckButton` uses the %GTK_ACCESSIBLE_ROLE_CHECKBOX role.
 */
public class CheckButton : Widget, ActionableIF
{
	/** the main Gtk struct */
	protected GtkCheckButton* gtkCheckButton;

	/** Get the main Gtk struct */
	public GtkCheckButton* getCheckButtonStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCheckButton;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCheckButton;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCheckButton* gtkCheckButton, bool ownedRef = false)
	{
		this.gtkCheckButton = gtkCheckButton;
		super(cast(GtkWidget*)gtkCheckButton, ownedRef);
	}

	// add the Actionable capabilities
	mixin ActionableT!(GtkCheckButton);


	/** */
	public static GType getType()
	{
		return gtk_check_button_get_type();
	}

	/**
	 * Creates a new `GtkCheckButton`.
	 *
	 * Returns: a new `GtkCheckButton`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_check_button_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkCheckButton*) __p);
	}

	/**
	 * Creates a new `GtkCheckButton` with the given text and a mnemonic.
	 *
	 * Params:
	 *     label = The text of the button, with an underscore
	 *         in front of the mnemonic character
	 *
	 * Returns: a new `GtkCheckButton`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string label)
	{
		auto __p = gtk_check_button_new_with_mnemonic(Str.toStringz(label));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_mnemonic");
		}

		this(cast(GtkCheckButton*) __p);
	}

	/**
	 * Returns whether the check button is active.
	 *
	 * Returns: whether the check button is active
	 */
	public bool getActive()
	{
		return gtk_check_button_get_active(gtkCheckButton) != 0;
	}

	/**
	 * Returns whether the check button is in an inconsistent state.
	 *
	 * Returns: %TRUE if @check_button is currently in an inconsistent state
	 */
	public bool getInconsistent()
	{
		return gtk_check_button_get_inconsistent(gtkCheckButton) != 0;
	}

	/**
	 * Returns the label of the check button.
	 *
	 * Returns: The label @self shows next
	 *     to the indicator. If no label is shown, %NULL will be returned.
	 */
	public string getLabel()
	{
		return Str.toString(gtk_check_button_get_label(gtkCheckButton));
	}

	/**
	 * Returns whether underlines in the label indicate mnemonics.
	 *
	 * Returns: The value of the [property@Gtk.CheckButton:use-underline] property.
	 *     See [method@Gtk.CheckButton.set_use_underline] for details on how to set
	 *     a new value.
	 */
	public bool getUseUnderline()
	{
		return gtk_check_button_get_use_underline(gtkCheckButton) != 0;
	}

	/**
	 * Changes the check buttons active state.
	 *
	 * Params:
	 *     setting = the new value to set
	 */
	public void setActive(bool setting)
	{
		gtk_check_button_set_active(gtkCheckButton, setting);
	}

	/**
	 * Adds @self to the group of @group.
	 *
	 * In a group of multiple check buttons, only one button can be active
	 * at a time. The behavior of a checkbutton in a group is also commonly
	 * known as a *radio button*.
	 *
	 * Setting the group of a check button also changes the css name of the
	 * indicator widget's CSS node to 'radio'.
	 *
	 * Setting up groups in a cycle leads to undefined behavior.
	 *
	 * Note that the same effect can be achieved via the [iface@Gtk.Actionable]
	 * API, by using the same action with parameter type and state type 's'
	 * for all buttons in the group, and giving each button its own target
	 * value.
	 *
	 * Params:
	 *     group = another `GtkCheckButton` to
	 *         form a group with
	 */
	public void setGroup(CheckButton group)
	{
		gtk_check_button_set_group(gtkCheckButton, (group is null) ? null : group.getCheckButtonStruct());
	}

	/**
	 * Sets the `GtkCheckButton` to inconsistent state.
	 *
	 * You shoud turn off the inconsistent state again if the user checks
	 * the check button. This has to be done manually.
	 *
	 * Params:
	 *     inconsistent = %TRUE if state is inconsistent
	 */
	public void setInconsistent(bool inconsistent)
	{
		gtk_check_button_set_inconsistent(gtkCheckButton, inconsistent);
	}

	/**
	 * Sets the text of @self.
	 *
	 * If [property@Gtk.CheckButton:use-underline] is %TRUE, an underscore
	 * in @label is interpreted as mnemonic indicator, see
	 * [method@Gtk.CheckButton.set_use_underline] for details on this behavior.
	 *
	 * Params:
	 *     label = The text shown next to the indicator, or %NULL
	 *         to show no text
	 */
	public void setLabel(string label)
	{
		gtk_check_button_set_label(gtkCheckButton, Str.toStringz(label));
	}

	/**
	 * Sets whether underlines in the label indicate mnemonics.
	 *
	 * If @setting is %TRUE, an underscore character in @self's label
	 * indicates a mnemonic accelerator key. This behavior is similar
	 * to [property@Gtk.Label:use-underline].
	 *
	 * Params:
	 *     setting = the new value to set
	 */
	public void setUseUnderline(bool setting)
	{
		gtk_check_button_set_use_underline(gtkCheckButton, setting);
	}

	/**
	 * Emitted to when the check button is activated.
	 *
	 * The `::activate` signal on `GtkCheckButton` is an action signal and
	 * emitting it causes the button to animate press then release.
	 *
	 * Applications should never connect to this signal, but use the
	 * [signal@Gtk.CheckButton::toggled] signal.
	 *
	 * Since: 4.2
	 */
	gulong addOnActivate(void delegate(CheckButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the buttons's [property@Gtk.CheckButton:active]
	 * property changes.
	 */
	gulong addOnToggled(void delegate(CheckButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "toggled", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
