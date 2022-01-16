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


module gtk.Button;

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
 * The `GtkButton` widget is generally used to trigger a callback function that is
 * called when the button is pressed.
 * 
 * ![An example GtkButton](button.png)
 * 
 * The `GtkButton` widget can hold any valid child widget. That is, it can hold
 * almost any other standard `GtkWidget`. The most commonly used child is the
 * `GtkLabel`.
 * 
 * # CSS nodes
 * 
 * `GtkButton` has a single CSS node with name button. The node will get the
 * style classes .image-button or .text-button, if the content is just an
 * image or label, respectively. It may also receive the .flat style class.
 * When activating a button via the keyboard, the button will temporarily
 * gain the .keyboard-activating style class.
 * 
 * Other style classes that are commonly used with `GtkButton` include
 * .suggested-action and .destructive-action. In special cases, buttons
 * can be made round by adding the .circular style class.
 * 
 * Button-like widgets like [class@Gtk.ToggleButton], [class@Gtk.MenuButton],
 * [class@Gtk.VolumeButton], [class@Gtk.LockButton], [class@Gtk.ColorButton]
 * or [class@Gtk.FontButton] use style classes such as .toggle, .popup, .scale,
 * .lock, .color on the button node to differentiate themselves from a plain
 * `GtkButton`.
 * 
 * # Accessibility
 * 
 * `GtkButton` uses the %GTK_ACCESSIBLE_ROLE_BUTTON role.
 */
public class Button : Widget, ActionableIF
{
	/** the main Gtk struct */
	protected GtkButton* gtkButton;

	/** Get the main Gtk struct */
	public GtkButton* getButtonStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkButton;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkButton;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkButton* gtkButton, bool ownedRef = false)
	{
		this.gtkButton = gtkButton;
		super(cast(GtkWidget*)gtkButton, ownedRef);
	}

	// add the Actionable capabilities
	mixin ActionableT!(GtkButton);


	/** */
	public static GType getType()
	{
		return gtk_button_get_type();
	}

	/**
	 * Creates a new `GtkButton` widget.
	 *
	 * To add a child widget to the button, use [method@Gtk.Button.set_child].
	 *
	 * Returns: The newly created `GtkButton` widget.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_button_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkButton*) __p);
	}

	/**
	 * Creates a new `GtkButton` containing a label.
	 *
	 * If characters in @label are preceded by an underscore, they are underlined.
	 * If you need a literal underscore character in a label, use “__” (two
	 * underscores). The first underlined character represents a keyboard
	 * accelerator called a mnemonic. Pressing Alt and that key activates the button.
	 *
	 * Params:
	 *     label = The text of the button, with an underscore in front of the
	 *         mnemonic character
	 *
	 * Returns: a new `GtkButton`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string label)
	{
		auto __p = gtk_button_new_with_mnemonic(Str.toStringz(label));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_mnemonic");
		}

		this(cast(GtkButton*) __p);
	}

	/**
	 * Gets the child widget of @button.
	 *
	 * Returns: the child widget of @button
	 */
	public Widget getChild()
	{
		auto __p = gtk_button_get_child(gtkButton);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns whether the button has a frame.
	 *
	 * Returns: %TRUE if the button has a frame
	 */
	public bool getHasFrame()
	{
		return gtk_button_get_has_frame(gtkButton) != 0;
	}

	/**
	 * Returns the icon name of the button.
	 *
	 * If the icon name has not been set with [method@Gtk.Button.set_icon_name]
	 * the return value will be %NULL. This will be the case if you create
	 * an empty button with [ctor@Gtk.Button.new] to use as a container.
	 *
	 * Returns: The icon name set via [method@Gtk.Button.set_icon_name]
	 */
	public string getIconName()
	{
		return Str.toString(gtk_button_get_icon_name(gtkButton));
	}

	/**
	 * Fetches the text from the label of the button.
	 *
	 * If the label text has not been set with [method@Gtk.Button.set_label]
	 * the return value will be %NULL. This will be the case if you create
	 * an empty button with [ctor@Gtk.Button.new] to use as a container.
	 *
	 * Returns: The text of the label widget. This string is owned
	 *     by the widget and must not be modified or freed.
	 */
	public string getLabel()
	{
		return Str.toString(gtk_button_get_label(gtkButton));
	}

	/**
	 * gets whether underlines are interpreted as mnemonics.
	 *
	 * See [method@Gtk.Button.set_use_underline].
	 *
	 * Returns: %TRUE if an embedded underline in the button label
	 *     indicates the mnemonic accelerator keys.
	 */
	public bool getUseUnderline()
	{
		return gtk_button_get_use_underline(gtkButton) != 0;
	}

	/**
	 * Sets the child widget of @button.
	 *
	 * Note that by using this API, you take full responsibility for setting
	 * up the proper accessibility label and description information for @button.
	 * Most likely, you'll either set the accessibility label or description
	 * for @button explicitly, or you'll set a labelled-by or described-by
	 * relations from @child to @button.
	 *
	 * Params:
	 *     child = the child widget
	 */
	public void setChild(Widget child)
	{
		gtk_button_set_child(gtkButton, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets the style of the button.
	 *
	 * Buttons can has a flat appearance or have a frame drawn around them.
	 *
	 * Params:
	 *     hasFrame = whether the button should have a visible frame
	 */
	public void setHasFrame(bool hasFrame)
	{
		gtk_button_set_has_frame(gtkButton, hasFrame);
	}

	/**
	 * Adds a `GtkImage` with the given icon name as a child.
	 *
	 * If @button already contains a child widget, that child widget will
	 * be removed and replaced with the image.
	 *
	 * Params:
	 *     iconName = An icon name
	 */
	public void setIconName(string iconName)
	{
		gtk_button_set_icon_name(gtkButton, Str.toStringz(iconName));
	}

	/**
	 * Sets the text of the label of the button to @label.
	 *
	 * This will also clear any previously set labels.
	 *
	 * Params:
	 *     label = a string
	 */
	public void setLabel(string label)
	{
		gtk_button_set_label(gtkButton, Str.toStringz(label));
	}

	/**
	 * Sets whether to use underlines as mnemonics.
	 *
	 * If true, an underline in the text of the button label indicates
	 * the next character should be used for the mnemonic accelerator key.
	 *
	 * Params:
	 *     useUnderline = %TRUE if underlines in the text indicate mnemonics
	 */
	public void setUseUnderline(bool useUnderline)
	{
		gtk_button_set_use_underline(gtkButton, useUnderline);
	}

	/**
	 * Emitted to animate press then release.
	 *
	 * This is an action signal. Applications should never connect
	 * to this signal, but use the [signal@Gtk.Button::clicked] signal.
	 */
	gulong addOnActivate(void delegate(Button) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the button has been activated (pressed and released).
	 */
	gulong addOnClicked(void delegate(Button) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "clicked", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
