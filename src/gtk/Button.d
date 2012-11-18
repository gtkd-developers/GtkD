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

/*
 * Conversion parameters:
 * inFile  = GtkButton.html
 * outPack = gtk
 * outFile = Button
 * strct   = GtkButton
 * realStrct=
 * ctorStrct=
 * clss    = Button
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- ActionableIF
 * 	- ActivatableIF
 * prefixes:
 * 	- gtk_button_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_button_new_with_mnemonic
 * 	- gtk_button_new_with_label
 * 	- gtk_button_new_from_stock
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Image
 * 	- gdk.Window
 * 	- gtk.Widget
 * 	- gtk.ActionableIF
 * 	- gtk.ActionableT
 * 	- gtk.ActivatableT
 * 	- gtk.ActivatableIF
 * structWrap:
 * 	- GdkWindow* -> Window
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Button;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.Image;
private import gdk.Window;
private import gtk.Widget;
private import gtk.ActionableIF;
private import gtk.ActionableT;
private import gtk.ActivatableT;
private import gtk.ActivatableIF;



private import gtk.Bin;

/**
 * Description
 * The GtkButton widget is generally used to trigger a callback function that is
 * called when the button is pressed. The various signals and how to use them
 * are outlined below.
 * The GtkButton widget can hold any valid child widget. That is, it can hold
 * almost any other standard GtkWidget. The most commonly used child is the
 * GtkLabel.
 */
public class Button : Bin, ActionableIF, ActivatableIF
{
	
	/** the main Gtk struct */
	protected GtkButton* gtkButton;
	
	
	public GtkButton* getButtonStruct()
	{
		return gtkButton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
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
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkButton = cast(GtkButton*)obj;
	}
	
	private static IconSize currentIconSize = IconSize.BUTTON;
	
	// add the Actionable capabilities
	mixin ActionableT!(GtkButton);
	
	// add the Activatable capabilities
	mixin ActivatableT!(GtkButton);
	
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
			auto p = gtk_button_new_from_stock(Str.toStringz(StockDesc[stockID]));
			
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
	int[string] connectedSignals;
	
	void delegate(Button)[] onActivateListeners;
	/**
	 * The ::activate signal on GtkButton is an action signal and
	 * emitting it causes the button to animate press then release.
	 * Applications should never connect to this signal, but use the
	 * "clicked" signal.
	 */
	void addOnActivate(void delegate(Button) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("activate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"activate",
			cast(GCallback)&callBackActivate,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["activate"] = 1;
		}
		onActivateListeners ~= dlg;
	}
	extern(C) static void callBackActivate(GtkButton* widgetStruct, Button _button)
	{
		foreach ( void delegate(Button) dlg ; _button.onActivateListeners )
		{
			dlg(_button);
		}
	}
	
	void delegate(Button)[] onClickedListeners;
	/**
	 * Emitted when the button has been activated (pressed and released).
	 */
	void addOnClicked(void delegate(Button) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("clicked" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"clicked",
			cast(GCallback)&callBackClicked,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["clicked"] = 1;
		}
		onClickedListeners ~= dlg;
	}
	extern(C) static void callBackClicked(GtkButton* buttonStruct, Button _button)
	{
		foreach ( void delegate(Button) dlg ; _button.onClickedListeners )
		{
			dlg(_button);
		}
	}
	
	void delegate(Button)[] onEnterListeners;
	/**
	 * Warning
	 * GtkButton::enter has been deprecated since version 2.8 and should not be used in newly-written code. Use the "enter-notify-event" signal.
	 * Emitted when the pointer enters the button.
	 */
	void addOnEnter(void delegate(Button) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("enter" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"enter",
			cast(GCallback)&callBackEnter,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["enter"] = 1;
		}
		onEnterListeners ~= dlg;
	}
	extern(C) static void callBackEnter(GtkButton* buttonStruct, Button _button)
	{
		foreach ( void delegate(Button) dlg ; _button.onEnterListeners )
		{
			dlg(_button);
		}
	}
	
	void delegate(Button)[] onLeaveListeners;
	/**
	 * Warning
	 * GtkButton::leave has been deprecated since version 2.8 and should not be used in newly-written code. Use the "leave-notify-event" signal.
	 * Emitted when the pointer leaves the button.
	 */
	void addOnLeave(void delegate(Button) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("leave" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"leave",
			cast(GCallback)&callBackLeave,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["leave"] = 1;
		}
		onLeaveListeners ~= dlg;
	}
	extern(C) static void callBackLeave(GtkButton* buttonStruct, Button _button)
	{
		foreach ( void delegate(Button) dlg ; _button.onLeaveListeners )
		{
			dlg(_button);
		}
	}
	
	void delegate(Button)[] onPressedListeners;
	/**
	 * Warning
	 * GtkButton::pressed has been deprecated since version 2.8 and should not be used in newly-written code. Use the "button-press-event" signal.
	 * Emitted when the button is pressed.
	 */
	void addOnPressed(void delegate(Button) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("pressed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"pressed",
			cast(GCallback)&callBackPressed,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["pressed"] = 1;
		}
		onPressedListeners ~= dlg;
	}
	extern(C) static void callBackPressed(GtkButton* buttonStruct, Button _button)
	{
		foreach ( void delegate(Button) dlg ; _button.onPressedListeners )
		{
			dlg(_button);
		}
	}
	
	void delegate(Button)[] onReleasedListeners;
	/**
	 * Warning
	 * GtkButton::released has been deprecated since version 2.8 and should not be used in newly-written code. Use the "button-release-event" signal.
	 * Emitted when the button is released.
	 */
	void addOnReleased(void delegate(Button) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("released" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"released",
			cast(GCallback)&callBackReleased,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["released"] = 1;
		}
		onReleasedListeners ~= dlg;
	}
	extern(C) static void callBackReleased(GtkButton* buttonStruct, Button _button)
	{
		foreach ( void delegate(Button) dlg ; _button.onReleasedListeners )
		{
			dlg(_button);
		}
	}
	
	
	/**
	 * Creates a new GtkButton widget. To add a child widget to the button,
	 * use gtk_container_add().
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_button_new (void);
		auto p = gtk_button_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_button_new()");
		}
		this(cast(GtkButton*) p);
	}
	
	/**
	 * Warning
	 * gtk_button_pressed has been deprecated since version 2.20 and should not be used in newly-written code. Use the "button-press-event" signal.
	 * Emits a "pressed" signal to the given GtkButton.
	 */
	public void pressed()
	{
		// void gtk_button_pressed (GtkButton *button);
		gtk_button_pressed(gtkButton);
	}
	
	/**
	 * Warning
	 * gtk_button_released has been deprecated since version 2.20 and should not be used in newly-written code. Use the "button-release-event" signal.
	 * Emits a "released" signal to the given GtkButton.
	 */
	public void released()
	{
		// void gtk_button_released (GtkButton *button);
		gtk_button_released(gtkButton);
	}
	
	/**
	 * Emits a "clicked" signal to the given GtkButton.
	 */
	public void clicked()
	{
		// void gtk_button_clicked (GtkButton *button);
		gtk_button_clicked(gtkButton);
	}
	
	/**
	 * Warning
	 * gtk_button_enter has been deprecated since version 2.20 and should not be used in newly-written code. Use the "enter-notify-event" signal.
	 * Emits a "enter" signal to the given GtkButton.
	 */
	public void enter()
	{
		// void gtk_button_enter (GtkButton *button);
		gtk_button_enter(gtkButton);
	}
	
	/**
	 * Warning
	 * gtk_button_leave has been deprecated since version 2.20 and should not be used in newly-written code. Use the "leave-notify-event" signal.
	 * Emits a "leave" signal to the given GtkButton.
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
	 * Params:
	 * newstyle = The GtkReliefStyle as described above.
	 */
	public void setRelief(GtkReliefStyle newstyle)
	{
		// void gtk_button_set_relief (GtkButton *button,  GtkReliefStyle newstyle);
		gtk_button_set_relief(gtkButton, newstyle);
	}
	
	/**
	 * Returns the current relief style of the given GtkButton.
	 * Returns: The current GtkReliefStyle
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
	 * Returns: The text of the label widget. This string is owned by the widget and must not be modified or freed.
	 */
	public string getLabel()
	{
		// const gchar * gtk_button_get_label (GtkButton *button);
		return Str.toString(gtk_button_get_label(gtkButton));
	}
	
	/**
	 * Sets the text of the label of the button to str. This text is
	 * also used to select the stock item if gtk_button_set_use_stock()
	 * is used.
	 * This will also clear any previously set labels.
	 * Params:
	 * label = a string
	 */
	public void setLabel(string label)
	{
		// void gtk_button_set_label (GtkButton *button,  const gchar *label);
		gtk_button_set_label(gtkButton, Str.toStringz(label));
	}
	
	/**
	 * Returns whether the button label is a stock item.
	 * Returns: TRUE if the button label is used to select a stock item instead of being used directly as the label text.
	 */
	public int getUseStock()
	{
		// gboolean gtk_button_get_use_stock (GtkButton *button);
		return gtk_button_get_use_stock(gtkButton);
	}
	
	/**
	 * If TRUE, the label set on the button is used as a
	 * stock id to select the stock item for the button.
	 * Params:
	 * useStock = TRUE if the button should use a stock item
	 */
	public void setUseStock(int useStock)
	{
		// void gtk_button_set_use_stock (GtkButton *button,  gboolean use_stock);
		gtk_button_set_use_stock(gtkButton, useStock);
	}
	
	/**
	 * Returns whether an embedded underline in the button label indicates a
	 * mnemonic. See gtk_button_set_use_underline().
	 * Returns: TRUE if an embedded underline in the button label indicates the mnemonic accelerator keys.
	 */
	public int getUseUnderline()
	{
		// gboolean gtk_button_get_use_underline (GtkButton *button);
		return gtk_button_get_use_underline(gtkButton);
	}
	
	/**
	 * If true, an underline in the text of the button label indicates
	 * the next character should be used for the mnemonic accelerator key.
	 * Params:
	 * useUnderline = TRUE if underlines in the text indicate mnemonics
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
	 * Since 2.4
	 * Params:
	 * focusOnClick = whether the button grabs focus when clicked with the mouse
	 */
	public void setFocusOnClick(int focusOnClick)
	{
		// void gtk_button_set_focus_on_click (GtkButton *button,  gboolean focus_on_click);
		gtk_button_set_focus_on_click(gtkButton, focusOnClick);
	}
	
	/**
	 * Returns whether the button grabs focus when it is clicked with the mouse.
	 * See gtk_button_set_focus_on_click().
	 * Since 2.4
	 * Returns: TRUE if the button grabs focus when it is clicked with the mouse.
	 */
	public int getFocusOnClick()
	{
		// gboolean gtk_button_get_focus_on_click (GtkButton *button);
		return gtk_button_get_focus_on_click(gtkButton);
	}
	
	/**
	 * Sets the alignment of the child. This property has no effect unless
	 * the child is a GtkMisc or a GtkAlignment.
	 * Since 2.4
	 * Params:
	 * xalign = the horizontal position of the child, 0.0 is left aligned,
	 * 1.0 is right aligned
	 * yalign = the vertical position of the child, 0.0 is top aligned,
	 * 1.0 is bottom aligned
	 */
	public void setAlignment(float xalign, float yalign)
	{
		// void gtk_button_set_alignment (GtkButton *button,  gfloat xalign,  gfloat yalign);
		gtk_button_set_alignment(gtkButton, xalign, yalign);
	}
	
	/**
	 * Gets the alignment of the child in the button.
	 * Since 2.4
	 * Params:
	 * xalign = return location for horizontal alignment. [out]
	 * yalign = return location for vertical alignment. [out]
	 */
	public void getAlignment(out float xalign, out float yalign)
	{
		// void gtk_button_get_alignment (GtkButton *button,  gfloat *xalign,  gfloat *yalign);
		gtk_button_get_alignment(gtkButton, &xalign, &yalign);
	}
	
	/**
	 * Set the image of button to the given widget. Note that
	 * it depends on the "gtk-button-images" setting whether the
	 * image will be displayed or not, you don't have to call
	 * gtk_widget_show() on image yourself.
	 * Since 2.6
	 * Params:
	 * image = a widget to set as the image for the button
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
	 * Since 2.6
	 * Returns: a GtkWidget or NULL in case there is no image. [transfer none]
	 */
	public Widget getImage()
	{
		// GtkWidget * gtk_button_get_image (GtkButton *button);
		auto p = gtk_button_get_image(gtkButton);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Sets the position of the image relative to the text
	 * inside the button.
	 * Since 2.10
	 * Params:
	 * position = the position
	 */
	public void setImagePosition(GtkPositionType position)
	{
		// void gtk_button_set_image_position (GtkButton *button,  GtkPositionType position);
		gtk_button_set_image_position(gtkButton, position);
	}
	
	/**
	 * Gets the position of the image relative to the text
	 * inside the button.
	 * Since 2.10
	 * Returns: the position
	 */
	public GtkPositionType getImagePosition()
	{
		// GtkPositionType gtk_button_get_image_position (GtkButton *button);
		return gtk_button_get_image_position(gtkButton);
	}
	
	/**
	 * If TRUE, the button will ignore the "gtk-button-images"
	 * setting and always show the image, if available.
	 * Use this property if the button would be useless or hard to use
	 * without the image.
	 * Params:
	 * alwaysShow = TRUE if the menuitem should always show the image
	 * Since 3.6
	 */
	public void setAlwaysShowImage(int alwaysShow)
	{
		// void gtk_button_set_always_show_image (GtkButton *button,  gboolean always_show);
		gtk_button_set_always_show_image(gtkButton, alwaysShow);
	}
	
	/**
	 * Returns whether the button will ignore the "gtk-button-images"
	 * setting and always show the image, if available.
	 * Returns: TRUE if the button will always show the image Since 3.6
	 */
	public int getAlwaysShowImage()
	{
		// gboolean gtk_button_get_always_show_image (GtkButton *button);
		return gtk_button_get_always_show_image(gtkButton);
	}
	
	/**
	 * Returns the button's event window if it is realized, NULL otherwise.
	 * This function should be rarely needed.
	 * Since 2.22
	 * Returns: button's event window. [transfer none]
	 */
	public Window getEventWindow()
	{
		// GdkWindow * gtk_button_get_event_window (GtkButton *button);
		auto p = gtk_button_get_event_window(gtkButton);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}
}
