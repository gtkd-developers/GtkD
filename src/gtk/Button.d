/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = Button
 * strct   = GtkButton
 * realStrct=
 * clss    = Button
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_button_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_button_new_with_mnemonic
 * 	- gtk_button_new_with_label
 * 	- gtk_button_new_from_stock
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * 	- gtk.Image
 * 	- gtk.typedefs
 * 	- gtk.Button
 * structWrap:
 * 	- GtkWidget* -> Widget
 * local aliases:
 */

module gtk.Button;

private import gtk.typedefs;

private import lib.gtk;

private import glib.Str;
private import gtk.Widget;
private import gtk.Image;
private import gtk.typedefs;
private import gtk.Button;

/**
 * Description
 * The GtkButton widget is generally used to attach a function to that
 * is called when the button is pressed. The various signals and how to use
 * them are outlined below.
 * The GtkButton widget can hold any valid child widget. That is it can
 * hold most any other standard GtkWidget. The most commonly used child is
 * the GtkLabel.
 */
private import gtk.Bin;
public class Button : Bin
{
	
	/** the main Gtk struct */
	protected GtkButton* gtkButton;
	
	
	public GtkButton* getButtonStruct()
	{
		return gtkButton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkButton;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkButton* gtkButton)
	{
		super(cast(GtkBin*)gtkButton);
		this.gtkButton = gtkButton;
	}
	
	private static IconSize currentIconSize = IconSize.BUTTON;
	
	private char[] action;
	
	
	public static void setIconSize(IconSize iconSize)
	{
		currentIconSize = iconSize;
	}
	public static IconSize getIconSize()
	{
		return currentIconSize;
	}
	
	public void setAction(char[] action)
	{
		this.action = action.dup;
	}
	
	public char[] getAction()
	{
		return action;
	}
	
	/**
	 * Creates a new GtkButton containing a label.
	 * If characters in label are preceded by an underscore, they are underlined.
	 * If you need a literal underscore character in a label, use '__' (two
	 * underscores). The first underlined character represents a keyboard
	 * accelerator called a mnemonic.
	 * Pressing Alt and that key activates the button.
	 * label:
	 *  The text of the button, with an underscore in front of the
	 *  mnemonic character
	 * Returns:
	 *  a new GtkButton
	 */
	public this (char[] label, bit mnemonic=true)
	{
		if ( mnemonic )
		{
			// GtkWidget* gtk_button_new_with_mnemonic (const gchar *label);
			this(cast(GtkButton*)gtk_button_new_with_mnemonic(Str.toStringz(label)) );
		}
		else
		{
			// GtkWidget* gtk_button_new_with_label (const gchar *label);
			this(cast(GtkButton*)gtk_button_new_with_label(Str.toStringz(label)) );
		}
	}
	
	/**
	 * Creates a new GtkButton containing the image and text from a stock item.
	 * Some stock ids have preprocessor macros like GTK_STOCK_OK and
	 * GTK_STOCK_APPLY.
	 * If stock_id is unknown, then it will be treated as a mnemonic
	 * label (as for gtk_button_new_with_mnemonic()).
	 * stock_id:
	 *  the name of the stock item
	 * Returns:
	 *  a new GtkButton
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
			this(cast(GtkButton*)gtk_button_new_from_stock(StockDesc[stockID]) );
		}
		
	}
	
	public this(StockID stockID, void delegate(Button) dlg, bool hideLabel=false)
	{
		this(stockID, hideLabel);
		addOnClicked(dlg);
	}
	
	
	public this(char[] label, void delegate(Button) dlg, bit mnemonic=true)
	{
		this(label, mnemonic);
		addOnClicked(dlg);
	}
	
	public this(char[] label, void delegate(Button) dlg, char[] action)
	{
		this(label);
		setAction(action);
		addOnClicked(dlg);
	}
	
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(Button)[] onActivateListeners;
	void addOnActivate(void delegate(Button) dlg)
	{
		if ( !("activate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"activate",
			cast(GCallback)&callBackActivate,
			this,
			null,
			0);
			connectedSignals["activate"] = 1;
		}
		onActivateListeners ~= dlg;
	}
	extern(C) static void callBackActivate(GtkButton* widgetStruct, Button button)
	{
		bit consumed = false;
		
		foreach ( void delegate(Button) dlg ; button.onActivateListeners )
		{
			dlg(button);
		}
		
		return consumed;
	}
	
	void delegate(Button)[] onClickedListeners;
	void addOnClicked(void delegate(Button) dlg)
	{
		if ( !("clicked" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"clicked",
			cast(GCallback)&callBackClicked,
			this,
			null,
			0);
			connectedSignals["clicked"] = 1;
		}
		onClickedListeners ~= dlg;
	}
	extern(C) static void callBackClicked(GtkButton* buttonStruct, Button button)
	{
		bit consumed = false;
		
		foreach ( void delegate(Button) dlg ; button.onClickedListeners )
		{
			dlg(button);
		}
		
		return consumed;
	}
	
	void delegate(Button)[] onEnterListeners;
	void addOnEnter(void delegate(Button) dlg)
	{
		if ( !("enter" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"enter",
			cast(GCallback)&callBackEnter,
			this,
			null,
			0);
			connectedSignals["enter"] = 1;
		}
		onEnterListeners ~= dlg;
	}
	extern(C) static void callBackEnter(GtkButton* buttonStruct, Button button)
	{
		bit consumed = false;
		
		foreach ( void delegate(Button) dlg ; button.onEnterListeners )
		{
			dlg(button);
		}
		
		return consumed;
	}
	
	void delegate(Button)[] onLeaveListeners;
	void addOnLeave(void delegate(Button) dlg)
	{
		if ( !("leave" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"leave",
			cast(GCallback)&callBackLeave,
			this,
			null,
			0);
			connectedSignals["leave"] = 1;
		}
		onLeaveListeners ~= dlg;
	}
	extern(C) static void callBackLeave(GtkButton* buttonStruct, Button button)
	{
		bit consumed = false;
		
		foreach ( void delegate(Button) dlg ; button.onLeaveListeners )
		{
			dlg(button);
		}
		
		return consumed;
	}
	
	void delegate(Button)[] onPressedListeners;
	void addOnPressed(void delegate(Button) dlg)
	{
		if ( !("pressed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"pressed",
			cast(GCallback)&callBackPressed,
			this,
			null,
			0);
			connectedSignals["pressed"] = 1;
		}
		onPressedListeners ~= dlg;
	}
	extern(C) static void callBackPressed(GtkButton* buttonStruct, Button button)
	{
		bit consumed = false;
		
		foreach ( void delegate(Button) dlg ; button.onPressedListeners )
		{
			dlg(button);
		}
		
		return consumed;
	}
	
	void delegate(Button)[] onReleasedListeners;
	void addOnReleased(void delegate(Button) dlg)
	{
		if ( !("released" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"released",
			cast(GCallback)&callBackReleased,
			this,
			null,
			0);
			connectedSignals["released"] = 1;
		}
		onReleasedListeners ~= dlg;
	}
	extern(C) static void callBackReleased(GtkButton* buttonStruct, Button button)
	{
		bit consumed = false;
		
		foreach ( void delegate(Button) dlg ; button.onReleasedListeners )
		{
			dlg(button);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new GtkButton widget. To add a child widget to the button,
	 * use gtk_container_add().
	 * Returns:
	 * The newly created GtkButton widget.
	 */
	public this ()
	{
		// GtkWidget* gtk_button_new (void);
		this(cast(GtkButton*)gtk_button_new() );
	}
	
	
	
	
	/**
	 * Emits a GtkButton::pressed signal to the given GtkButton.
	 * button:
	 * The GtkButton you want to send the signal to.
	 */
	public void pressed()
	{
		// void gtk_button_pressed (GtkButton *button);
		gtk_button_pressed(gtkButton);
	}
	
	/**
	 * Emits a GtkButton::released signal to the given GtkButton.
	 * button:
	 * The GtkButton you want to send the signal to.
	 */
	public void released()
	{
		// void gtk_button_released (GtkButton *button);
		gtk_button_released(gtkButton);
	}
	
	/**
	 * Emits a GtkButton::clicked signal to the given GtkButton.
	 * button:
	 * The GtkButton you want to send the signal to.
	 */
	public void clicked()
	{
		// void gtk_button_clicked (GtkButton *button);
		gtk_button_clicked(gtkButton);
	}
	
	/**
	 * Emits a GtkButton::enter signal to the given GtkButton.
	 * button:
	 * The GtkButton you want to send the signal to.
	 */
	public void enter()
	{
		// void gtk_button_enter (GtkButton *button);
		gtk_button_enter(gtkButton);
	}
	
	/**
	 * Emits a GtkButton::leave signal to the given GtkButton.
	 * button:
	 * The GtkButton you want to send the signal to.
	 */
	public void leave()
	{
		// void gtk_button_leave (GtkButton *button);
		gtk_button_leave(gtkButton);
	}
	
	/**
	 * Sets the relief style of the edges of the given GtkButton widget.
	 * Three styles exist, GTK_RELIEF_NORMAL, GTK_RELIEF_HALF, GTK_RELIEF_NONE.
	 * The default style is, as one can guess, GTK_RELIEF_NORMAL.
	 * button:
	 * The GtkButton you want to set relief styles of.
	 * newstyle:
	 * The GtkReliefStyle as described above.
	 */
	public void setRelief(GtkReliefStyle newstyle)
	{
		// void gtk_button_set_relief (GtkButton *button,  GtkReliefStyle newstyle);
		gtk_button_set_relief(gtkButton, newstyle);
	}
	
	/**
	 * Returns the current relief style of the given GtkButton.
	 * button:
	 * The GtkButton you want the GtkReliefStyle from.
	 * Returns:
	 * The current GtkReliefStyle
	 */
	public GtkReliefStyle getRelief()
	{
		// GtkReliefStyle gtk_button_get_relief (GtkButton *button);
		return gtk_button_get_relief(gtkButton);
	}
	
	/**
	 * Fetches the text from the label of the button, as set by
	 * gtk_button_set_label(). If the label text has not
	 * been set the return value will be NULL. This will be the
	 * case if you create an empty button with gtk_button_new() to
	 * use as a container.
	 * button:
	 *  a GtkButton
	 * Returns:
	 *  The text of the label widget. This string is owned
	 * by the widget and must not be modified or freed.
	 */
	public char[] getLabel()
	{
		// const gchar* gtk_button_get_label (GtkButton *button);
		return Str.toString(gtk_button_get_label(gtkButton) );
	}
	
	/**
	 * Sets the text of the label of the button to str. This text is
	 * also used to select the stock item if gtk_button_set_use_stock()
	 * is used.
	 * This will also clear any previously set labels.
	 * button:
	 *  a GtkButton
	 * label:
	 *  a string
	 */
	public void setLabel(char[] label)
	{
		// void gtk_button_set_label (GtkButton *button,  const gchar *label);
		gtk_button_set_label(gtkButton, Str.toStringz(label));
	}
	
	/**
	 * Returns whether the button label is a stock item.
	 * button:
	 *  a GtkButton
	 * Returns:
	 *  TRUE if the button label is used to
	 *  select a stock item instead of being
	 *  used directly as the label text.
	 */
	public int getUseStock()
	{
		// gboolean gtk_button_get_use_stock (GtkButton *button);
		return gtk_button_get_use_stock(gtkButton);
	}
	
	/**
	 * If true, the label set on the button is used as a
	 * stock id to select the stock item for the button.
	 * button:
	 *  a GtkButton
	 * use_stock:
	 *  TRUE if the button should use a stock item
	 */
	public void setUseStock(int useStock)
	{
		// void gtk_button_set_use_stock (GtkButton *button,  gboolean use_stock);
		gtk_button_set_use_stock(gtkButton, useStock);
	}
	
	/**
	 * Returns whether an embedded underline in the button label indicates a
	 * mnemonic. See gtk_button_set_use_underline().
	 * button:
	 *  a GtkButton
	 * Returns:
	 *  TRUE if an embedded underline in the button label
	 *  indicates the mnemonic accelerator keys.
	 */
	public int getUseUnderline()
	{
		// gboolean gtk_button_get_use_underline (GtkButton *button);
		return gtk_button_get_use_underline(gtkButton);
	}
	
	/**
	 * If true, an underline in the text of the button label indicates
	 * the next character should be used for the mnemonic accelerator key.
	 * button:
	 *  a GtkButton
	 * use_underline:
	 *  TRUE if underlines in the text indicate mnemonics
	 */
	public void setUseUnderline(int useUnderline)
	{
		// void gtk_button_set_use_underline (GtkButton *button,  gboolean use_underline);
		gtk_button_set_use_underline(gtkButton, useUnderline);
	}
	
	/**
	 * Sets whether the button will grab focus when it is clicked with the mouse.
	 * Making mouse clicks not grab focus is useful in places like toolbars where
	 * you don't want the keyboard focus removed from the main area of the
	 * application.
	 * button:
	 *  a GtkButton
	 * focus_on_click:
	 *  whether the button grabs focus when clicked with the mouse
	 * Since 2.4
	 */
	public void setFocusOnClick(int focusOnClick)
	{
		// void gtk_button_set_focus_on_click (GtkButton *button,  gboolean focus_on_click);
		gtk_button_set_focus_on_click(gtkButton, focusOnClick);
	}
	
	/**
	 * Returns whether the button grabs focus when it is clicked with the mouse.
	 * See gtk_button_set_focus_on_click().
	 * button:
	 *  a GtkButton
	 * Returns:
	 *  TRUE if the button grabs focus when it is clicked with
	 *  the mouse.
	 * Since 2.4
	 */
	public int getFocusOnClick()
	{
		// gboolean gtk_button_get_focus_on_click (GtkButton *button);
		return gtk_button_get_focus_on_click(gtkButton);
	}
	
	/**
	 * Sets the alignment of the child. This property has no effect unless
	 * the child is a GtkMisc or a GtkAligment.
	 * button:
	 *  a GtkButton
	 * xalign:
	 *  the horizontal position of the child, 0.0 is left aligned,
	 *  1.0 is right aligned
	 * yalign:
	 *  the vertical position of the child, 0.0 is top aligned,
	 *  1.0 is bottom aligned
	 * Since 2.4
	 */
	public void setAlignment(float xalign, float yalign)
	{
		// void gtk_button_set_alignment (GtkButton *button,  gfloat xalign,  gfloat yalign);
		gtk_button_set_alignment(gtkButton, xalign, yalign);
	}
	
	/**
	 * Gets the alignment of the child in the button.
	 * button:
	 *  a GtkButton
	 * xalign:
	 *  return location for horizontal alignment
	 * yalign:
	 *  return location for vertical alignment
	 * Since 2.4
	 */
	public void getAlignment(float* xalign, float* yalign)
	{
		// void gtk_button_get_alignment (GtkButton *button,  gfloat *xalign,  gfloat *yalign);
		gtk_button_get_alignment(gtkButton, xalign, yalign);
	}
	
	/**
	 * Set the image of button to the given widget. Note that
	 * it depends on the gtk-button-images setting whether the
	 * image will be displayed or not, you don't have to call
	 * gtk_widget_show() on image yourself.
	 * button:
	 *  a GtkButton
	 * image:
	 *  a widget to set as the image for the button
	 * Since 2.6
	 */
	public void setImage(Widget image)
	{
		// void gtk_button_set_image (GtkButton *button,  GtkWidget *image);
		gtk_button_set_image(gtkButton, (image is null) ? null : image.getWidgetStruct());
	}
	
	/**
	 * Gets the widget that is currenty set as the image of button.
	 * This may have been explicitly set by gtk_button_set_image()
	 * or constructed by gtk_button_new_from_stock().
	 * button:
	 *  a GtkButton
	 * Returns:
	 *  a GtkWidget or NULL in case there is no image
	 * Since 2.6
	 * Property Details
	 * The "focus-on-click" property
	 *  "focus-on-click" gboolean : Read / Write
	 * Whether the button grabs focus when it is clicked with the mouse.
	 * Default value: TRUE
	 */
	public Widget getImage()
	{
		// GtkWidget* gtk_button_get_image (GtkButton *button);
		return new Widget( gtk_button_get_image(gtkButton) );
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
