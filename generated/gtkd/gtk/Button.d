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

private import gdk.Window;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.ActionableIF;
private import gtk.ActionableT;
private import gtk.ActivatableIF;
private import gtk.ActivatableT;
private import gtk.Bin;
private import gtk.Image;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * The #GtkButton widget is generally used to trigger a callback function that is
 * called when the button is pressed.  The various signals and how to use them
 * are outlined below.
 * 
 * The #GtkButton widget can hold any valid child widget.  That is, it can hold
 * almost any other standard #GtkWidget.  The most commonly used child is the
 * #GtkLabel.
 * 
 * # CSS nodes
 * 
 * GtkButton has a single CSS node with name button. The node will get the
 * style classes .image-button or .text-button, if the content is just an
 * image or label, respectively. It may also receive the .flat style class.
 * 
 * Other style classes that are commonly used with GtkButton include
 * .suggested-action and .destructive-action. In special cases, buttons
 * can be made round by adding the .circular style class.
 * 
 * Button-like widgets like #GtkToggleButton, #GtkMenuButton, #GtkVolumeButton,
 * #GtkLockButton, #GtkColorButton, #GtkFontButton or #GtkFileChooserButton use
 * style classes such as .toggle, .popup, .scale, .lock, .color, .font, .file
 * to differentiate themselves from a plain GtkButton.
 */
public class Button : Bin, ActionableIF, ActivatableIF
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
		super(cast(GtkBin*)gtkButton, ownedRef);
	}

	// add the Actionable capabilities
	mixin ActionableT!(GtkButton);

	// add the Activatable capabilities
	mixin ActivatableT!(GtkButton);

	private static IconSize currentIconSize = IconSize.BUTTON;

	/** */
	public static void setIconSize(IconSize iconSize)
	{
		currentIconSize = iconSize;
	}

	/** */
	public static IconSize getIconSize()
	{
		return currentIconSize;
	}

	/**
	 * Creates a new GtkButton containing a label.
	 * If characters in label are preceded by an underscore, they are underlined.
	 * If you need a literal underscore character in a label, use '__' (two
	 * underscores). The first underlined character represents a keyboard
	 * accelerator called a mnemonic.
	 * Pressing Alt and that key activates the button.
	 * Params:
	 *  label = The text of the button, with an underscore in front of the
	 *  mnemonic character
	 *  mnemonic = true if the button has an mnemnonic
	 * Returns:
	 *  a new GtkButton
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string label, bool mnemonic=true)
	{
		GtkButton* p;

		if ( mnemonic )
		{
			// GtkWidget* gtk_button_new_with_mnemonic (const gchar *label);
			p = cast(GtkButton*)gtk_button_new_with_mnemonic(Str.toStringz(label));
		}
		else
		{
			// GtkWidget* gtk_button_new_with_label (const gchar *label);
			p = cast(GtkButton*)gtk_button_new_with_label(Str.toStringz(label));
		}

		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_button_new_with_label");
		}

		this(p);
	}

	/**
	 * Creates a new GtkButton containing the image and text from a stock item.
	 * Some stock ids have preprocessor macros like GTK_STOCK_OK and
	 * GTK_STOCK_APPLY.
	 * If stock_id is unknown, then it will be treated as a mnemonic
	 * label (as for gtk_button_new_with_mnemonic()).
	 * Params:
	 *  StockID = the name of the stock item
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (StockID stockID, bool hideLabel=false)
	{
		// GtkWidget* gtk_button_new_from_stock (const gchar *stock_id);
		if ( hideLabel )
		{
			this();
			Image image = new Image(stockID,currentIconSize);
			add(image);
		}
		else
		{
			auto p = gtk_button_new_from_stock(Str.toStringz(stockID));

			if(p is null)
			{
				throw new ConstructionException("null returned by gtk_button_new_from_stock");
			}

			this(cast(GtkButton*) p);
		}
	}

	/** */
	public this(StockID stockID, void delegate(Button) dlg, bool hideLabel=false)
	{
		this(stockID, hideLabel);
		addOnClicked(dlg);
	}

	/** */
	public this(string label, void delegate(Button) dlg, bool mnemonic=true)
	{
		this(label, mnemonic);
		addOnClicked(dlg);
	}

	/** */
	public this(string label, void delegate(Button) dlg, string action)
	{
		this(label);
		setActionName(action);
		addOnClicked(dlg);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_button_get_type();
	}

	/**
	 * Creates a new #GtkButton widget. To add a child widget to the button,
	 * use gtk_container_add().
	 *
	 * Returns: The newly created #GtkButton widget.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_button_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkButton*) p);
	}

	/**
	 * Creates a new button containing an icon from the current icon theme.
	 *
	 * If the icon name isn’t known, a “broken image” icon will be
	 * displayed instead. If the current icon theme is changed, the icon
	 * will be updated appropriately.
	 *
	 * This function is a convenience wrapper around gtk_button_new() and
	 * gtk_button_set_image().
	 *
	 * Params:
	 *     iconName = an icon name or %NULL
	 *     size = an icon size (#GtkIconSize)
	 *
	 * Returns: a new #GtkButton displaying the themed icon
	 *
	 * Since: 3.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string iconName, GtkIconSize size)
	{
		auto p = gtk_button_new_from_icon_name(Str.toStringz(iconName), size);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_icon_name");
		}

		this(cast(GtkButton*) p);
	}

	/**
	 * Emits a #GtkButton::clicked signal to the given #GtkButton.
	 */
	public void clicked()
	{
		gtk_button_clicked(gtkButton);
	}

	/**
	 * Emits a #GtkButton::enter signal to the given #GtkButton.
	 *
	 * Deprecated: Use the #GtkWidget::enter-notify-event signal.
	 */
	public void enter()
	{
		gtk_button_enter(gtkButton);
	}

	/**
	 * Gets the alignment of the child in the button.
	 *
	 * Deprecated: Access the child widget directly if you need to control
	 * its alignment.
	 *
	 * Params:
	 *     xalign = return location for horizontal alignment
	 *     yalign = return location for vertical alignment
	 *
	 * Since: 2.4
	 */
	public void getAlignment(out float xalign, out float yalign)
	{
		gtk_button_get_alignment(gtkButton, &xalign, &yalign);
	}

	/**
	 * Returns whether the button will ignore the #GtkSettings:gtk-button-images
	 * setting and always show the image, if available.
	 *
	 * Returns: %TRUE if the button will always show the image
	 *
	 * Since: 3.6
	 */
	public bool getAlwaysShowImage()
	{
		return gtk_button_get_always_show_image(gtkButton) != 0;
	}

	/**
	 * Returns the button’s event window if it is realized, %NULL otherwise.
	 * This function should be rarely needed.
	 *
	 * Returns: @button’s event window.
	 *
	 * Since: 2.22
	 */
	public Window getEventWindow()
	{
		auto p = gtk_button_get_event_window(gtkButton);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}

	/**
	 * Returns whether the button grabs focus when it is clicked with the mouse.
	 * See gtk_button_set_focus_on_click().
	 *
	 * Deprecated: Use gtk_widget_get_focus_on_click() instead
	 *
	 * Returns: %TRUE if the button grabs focus when it is clicked with
	 *     the mouse.
	 *
	 * Since: 2.4
	 */
	public override bool getFocusOnClick()
	{
		return gtk_button_get_focus_on_click(gtkButton) != 0;
	}

	/**
	 * Gets the widget that is currenty set as the image of @button.
	 * This may have been explicitly set by gtk_button_set_image()
	 * or constructed by gtk_button_new_from_stock().
	 *
	 * Returns: a #GtkWidget or %NULL in case
	 *     there is no image
	 *
	 * Since: 2.6
	 */
	public Widget getImage()
	{
		auto p = gtk_button_get_image(gtkButton);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Gets the position of the image relative to the text
	 * inside the button.
	 *
	 * Returns: the position
	 *
	 * Since: 2.10
	 */
	public GtkPositionType getImagePosition()
	{
		return gtk_button_get_image_position(gtkButton);
	}

	/**
	 * Fetches the text from the label of the button, as set by
	 * gtk_button_set_label(). If the label text has not
	 * been set the return value will be %NULL. This will be the
	 * case if you create an empty button with gtk_button_new() to
	 * use as a container.
	 *
	 * Returns: The text of the label widget. This string is owned
	 *     by the widget and must not be modified or freed.
	 */
	public string getLabel()
	{
		return Str.toString(gtk_button_get_label(gtkButton));
	}

	/**
	 * Returns the current relief style of the given #GtkButton.
	 *
	 * Returns: The current #GtkReliefStyle
	 */
	public GtkReliefStyle getRelief()
	{
		return gtk_button_get_relief(gtkButton);
	}

	/**
	 * Returns whether the button label is a stock item.
	 *
	 * Returns: %TRUE if the button label is used to
	 *     select a stock item instead of being
	 *     used directly as the label text.
	 */
	public bool getUseStock()
	{
		return gtk_button_get_use_stock(gtkButton) != 0;
	}

	/**
	 * Returns whether an embedded underline in the button label indicates a
	 * mnemonic. See gtk_button_set_use_underline ().
	 *
	 * Returns: %TRUE if an embedded underline in the button label
	 *     indicates the mnemonic accelerator keys.
	 */
	public bool getUseUnderline()
	{
		return gtk_button_get_use_underline(gtkButton) != 0;
	}

	/**
	 * Emits a #GtkButton::leave signal to the given #GtkButton.
	 *
	 * Deprecated: Use the #GtkWidget::leave-notify-event signal.
	 */
	public void leave()
	{
		gtk_button_leave(gtkButton);
	}

	/**
	 * Emits a #GtkButton::pressed signal to the given #GtkButton.
	 *
	 * Deprecated: Use the #GtkWidget::button-press-event signal.
	 */
	public void pressed()
	{
		gtk_button_pressed(gtkButton);
	}

	/**
	 * Emits a #GtkButton::released signal to the given #GtkButton.
	 *
	 * Deprecated: Use the #GtkWidget::button-release-event signal.
	 */
	public void released()
	{
		gtk_button_released(gtkButton);
	}

	/**
	 * Sets the alignment of the child. This property has no effect unless
	 * the child is a #GtkMisc or a #GtkAlignment.
	 *
	 * Deprecated: Access the child widget directly if you need to control
	 * its alignment.
	 *
	 * Params:
	 *     xalign = the horizontal position of the child, 0.0 is left aligned,
	 *         1.0 is right aligned
	 *     yalign = the vertical position of the child, 0.0 is top aligned,
	 *         1.0 is bottom aligned
	 *
	 * Since: 2.4
	 */
	public void setAlignment(float xalign, float yalign)
	{
		gtk_button_set_alignment(gtkButton, xalign, yalign);
	}

	/**
	 * If %TRUE, the button will ignore the #GtkSettings:gtk-button-images
	 * setting and always show the image, if available.
	 *
	 * Use this property if the button  would be useless or hard to use
	 * without the image.
	 *
	 * Params:
	 *     alwaysShow = %TRUE if the menuitem should always show the image
	 *
	 * Since: 3.6
	 */
	public void setAlwaysShowImage(bool alwaysShow)
	{
		gtk_button_set_always_show_image(gtkButton, alwaysShow);
	}

	/**
	 * Sets whether the button will grab focus when it is clicked with the mouse.
	 * Making mouse clicks not grab focus is useful in places like toolbars where
	 * you don’t want the keyboard focus removed from the main area of the
	 * application.
	 *
	 * Deprecated: Use gtk_widget_set_focus_on_click() instead
	 *
	 * Params:
	 *     focusOnClick = whether the button grabs focus when clicked with the mouse
	 *
	 * Since: 2.4
	 */
	public override void setFocusOnClick(bool focusOnClick)
	{
		gtk_button_set_focus_on_click(gtkButton, focusOnClick);
	}

	/**
	 * Set the image of @button to the given widget. The image will be
	 * displayed if the label text is %NULL or if
	 * #GtkButton:always-show-image is %TRUE. You don’t have to call
	 * gtk_widget_show() on @image yourself.
	 *
	 * Params:
	 *     image = a widget to set as the image for the button, or %NULL to unset
	 *
	 * Since: 2.6
	 */
	public void setImage(Widget image)
	{
		gtk_button_set_image(gtkButton, (image is null) ? null : image.getWidgetStruct());
	}

	/**
	 * Sets the position of the image relative to the text
	 * inside the button.
	 *
	 * Params:
	 *     position = the position
	 *
	 * Since: 2.10
	 */
	public void setImagePosition(GtkPositionType position)
	{
		gtk_button_set_image_position(gtkButton, position);
	}

	/**
	 * Sets the text of the label of the button to @str. This text is
	 * also used to select the stock item if gtk_button_set_use_stock()
	 * is used.
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
	 * Sets the relief style of the edges of the given #GtkButton widget.
	 * Two styles exist, %GTK_RELIEF_NORMAL and %GTK_RELIEF_NONE.
	 * The default style is, as one can guess, %GTK_RELIEF_NORMAL.
	 * The deprecated value %GTK_RELIEF_HALF behaves the same as
	 * %GTK_RELIEF_NORMAL.
	 *
	 * Params:
	 *     relief = The GtkReliefStyle as described above
	 */
	public void setRelief(GtkReliefStyle relief)
	{
		gtk_button_set_relief(gtkButton, relief);
	}

	/**
	 * If %TRUE, the label set on the button is used as a
	 * stock id to select the stock item for the button.
	 *
	 * Params:
	 *     useStock = %TRUE if the button should use a stock item
	 */
	public void setUseStock(bool useStock)
	{
		gtk_button_set_use_stock(gtkButton, useStock);
	}

	/**
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
	 * The ::activate signal on GtkButton is an action signal and
	 * emitting it causes the button to animate press then release.
	 * Applications should never connect to this signal, but use the
	 * #GtkButton::clicked signal.
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

	/**
	 * Emitted when the pointer enters the button.
	 *
	 * Deprecated: Use the #GtkWidget::enter-notify-event signal.
	 */
	gulong addOnEnter(void delegate(Button) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "enter", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the pointer leaves the button.
	 *
	 * Deprecated: Use the #GtkWidget::leave-notify-event signal.
	 */
	gulong addOnLeave(void delegate(Button) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "leave", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the button is pressed.
	 *
	 * Deprecated: Use the #GtkWidget::button-press-event signal.
	 */
	gulong addOnPressed(void delegate(Button) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "pressed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the button is released.
	 *
	 * Deprecated: Use the #GtkWidget::button-release-event signal.
	 */
	gulong addOnReleased(void delegate(Button) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "released", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
