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
 * inFile  = GtkButtonBox.html
 * outPack = gtk
 * outFile = ButtonBox
 * strct   = GtkButtonBox
 * realStrct=
 * ctorStrct=
 * clss    = ButtonBox
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_button_box_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.Widget
 * 	- gtk.Button
 * 	- gtk.HButtonBox
 * 	- gtk.VButtonBox
 * structWrap:
 * 	- GtkWidget* -> Widget
 * local aliases:
 */

module gtk.ButtonBox;

private import gtk.gtktypes;

private import lib.gtk;

private import gtk.Widget;
private import gtk.Button;
private import gtk.HButtonBox;
private import gtk.VButtonBox;

/**
 * Description
 * The primary purpose of this class is to keep track of the various properties
 * of GtkHButtonBox and GtkVButtonBox widgets.
 * gtk_button_box_get_child_size() retrieves the minimum width and height
 * for widgets in a given button box. gtk_button_box_set_child_size()
 * allows those properties to be changed.
 * The internal padding of buttons can be retrieved and changed per button box using
 * gtk_button_box_get_child_ipadding() and gtk_button_box_set_child_ipadding()
 * respectively.
 * gtk_button_box_get_spacing() and gtk_button_box_set_spacing() retrieve and
 * change default number of pixels between buttons, respectively.
 * gtk_button_box_get_layout() and gtk_button_box_set_layout() retrieve and alter the method
 * used to spread the buttons in a button box across the container, respectively.
 * The main purpose of GtkButtonBox is to make sure the children have all the same size.
 * Therefore it ignores the homogeneous property which it inherited from GtkBox, and always
 * behaves as if homogeneous was TRUE.
 */
private import gtk.Box;
public class ButtonBox : Box
{
	
	/** the main Gtk struct */
	protected GtkButtonBox* gtkButtonBox;
	
	
	public GtkButtonBox* getButtonBoxStruct()
	{
		return gtkButtonBox;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkButtonBox;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkButtonBox* gtkButtonBox)
	{
		super(cast(GtkBox*)gtkButtonBox);
		this.gtkButtonBox = gtkButtonBox;
	}
	
	static ButtonBox createActionBox(
	void delegate(Button) onClicked,
	StockID[] stocks,
	char[][] actions,
	bool vertical=false
	)
	{
		ButtonBox bBox;
		if ( vertical )
		{
			bBox = VButtonBox.createActionBox();
		}
		else
		{
			bBox = HButtonBox.createActionBox();
		}
		
		Button button;
		for( int i=0 ; i<stocks.length && i<actions.length ; i++)
		{
			button =  new Button(stocks[i]);
			bBox.packEnd(button, false, false, 7);
			button.setActionName(actions[i]);
			button.addOnClicked(onClicked);
		}
		return bBox;
	}
	
	static ButtonBox createOkBox(void delegate(Button) onClicked)
	{
		static StockID[] stocks = [StockID.OK];
		char[][] actions;
		actions ~= "action.ok";
		return createActionBox(onClicked, stocks, actions);
	}
	
	static ButtonBox createOkCancelBox(void delegate(Button) onClicked)
	{
		static StockID[] stocks = [StockID.OK, StockID.CANCEL];
		char[][] actions;
		actions ~= "action.ok";
		actions ~= "action.cancel";
		return createActionBox(onClicked, stocks, actions);
	}
	
	/**
	 */
	
	
	
	
	/**
	 * Retrieves the method being used to arrange the buttons in a button box.
	 * widget:
	 * a GtkButtonBox.
	 * Returns:
	 * the method used to layout buttons in widget.
	 */
	public GtkButtonBoxStyle getLayout()
	{
		// GtkButtonBoxStyle gtk_button_box_get_layout (GtkButtonBox *widget);
		return gtk_button_box_get_layout(gtkButtonBox);
	}
	
	/**
	 * Warning
	 * gtk_button_box_get_child_size is deprecated and should not be used in newly-written code. Use the style properties
	 * "child-min-width/-height" instead.
	 * Retrieves the current width and height of all child widgets in a button box.
	 * min_width and min_height are filled with those values, respectively.
	 * widget:
	 * a GtkButtonBox.
	 * min_width:
	 * the width of the buttons contained by widget.
	 * min_height:
	 * the height of the buttons contained by widget.
	 */
	public void getChildSize(int* minWidth, int* minHeight)
	{
		// void gtk_button_box_get_child_size (GtkButtonBox *widget,  gint *min_width,  gint *min_height);
		gtk_button_box_get_child_size(gtkButtonBox, minWidth, minHeight);
	}
	
	/**
	 * Warning
	 * gtk_button_box_get_child_ipadding is deprecated and should not be used in newly-written code. Use the style properties
	 * "child-internal-pad-x/-y" instead.
	 * Gets the default number of pixels that pad the buttons in a given button box.
	 * widget:
	 * a GtkButtonBox.
	 * ipad_x:
	 * the horizontal padding used by buttons in widget.
	 * ipad_y:
	 * the vertical padding used by buttons in widget.
	 */
	public void getChildIpadding(int* ipadX, int* ipadY)
	{
		// void gtk_button_box_get_child_ipadding  (GtkButtonBox *widget,  gint *ipad_x,  gint *ipad_y);
		gtk_button_box_get_child_ipadding(gtkButtonBox, ipadX, ipadY);
	}
	
	/**
	 * Returns whether child should appear in a secondary group of children.
	 * widget:
	 *  a GtkButtonBox
	 * child:
	 *  a child of widget
	 * Returns:
	 *  whether child should appear in a secondary group of children.
	 * Since 2.4
	 */
	public int getChildSecondary(Widget child)
	{
		// gboolean gtk_button_box_get_child_secondary  (GtkButtonBox *widget,  GtkWidget *child);
		return gtk_button_box_get_child_secondary(gtkButtonBox, (child is null) ? null : child.getWidgetStruct());
	}
	
	
	/**
	 * Changes the way buttons are arranged in their container.
	 * widget:
	 * a GtkButtonBox.
	 * layout_style:
	 * the new layout style.
	 */
	public void setLayout(GtkButtonBoxStyle layoutStyle)
	{
		// void gtk_button_box_set_layout (GtkButtonBox *widget,  GtkButtonBoxStyle layout_style);
		gtk_button_box_set_layout(gtkButtonBox, layoutStyle);
	}
	
	/**
	 * Warning
	 * gtk_button_box_set_child_size is deprecated and should not be used in newly-written code. Use the style properties
	 * "child-min-width/-height" instead.
	 * Sets a new default size for the children of a given button box.
	 * widget:
	 * a GtkButtonBox.
	 * min_width:
	 * a default width for buttons in widget.
	 * min_height:
	 * a default height for buttons in widget.
	 */
	public void setChildSize(int minWidth, int minHeight)
	{
		// void gtk_button_box_set_child_size (GtkButtonBox *widget,  gint min_width,  gint min_height);
		gtk_button_box_set_child_size(gtkButtonBox, minWidth, minHeight);
	}
	
	/**
	 * Warning
	 * gtk_button_box_set_child_ipadding is deprecated and should not be used in newly-written code. Use the style properties
	 * "child-internal-pad-x/-y" instead.
	 * Changes the amount of internal padding used by all buttons in a given button
	 * box.
	 * widget:
	 * a GtkButtonBox.
	 * ipad_x:
	 * the horizontal padding that should be used by each button in widget.
	 * ipad_y:
	 * the vertical padding that should be used by each button in widget.
	 */
	public void setChildIpadding(int ipadX, int ipadY)
	{
		// void gtk_button_box_set_child_ipadding  (GtkButtonBox *widget,  gint ipad_x,  gint ipad_y);
		gtk_button_box_set_child_ipadding(gtkButtonBox, ipadX, ipadY);
	}
	
	/**
	 * Sets whether child should appear in a secondary group of children.
	 * A typical use of a secondary child is the help button in a dialog.
	 * This group appears after the other children if the style
	 * is GTK_BUTTONBOX_START, GTK_BUTTONBOX_SPREAD or
	 * GTK_BUTTONBOX_EDGE, and before the other children if the style
	 * is GTK_BUTTONBOX_END. For horizontal button boxes, the definition
	 * of before/after depends on direction of the widget (see
	 * gtk_widget_set_direction()). If the style is GTK_BUTTONBOX_START
	 * or GTK_BUTTONBOX_END, then the secondary children are aligned at
	 * the other end of the button box from the main children. For the
	 * other styles, they appear immediately next to the main children.
	 * widget:
	 *  a GtkButtonBox
	 * child:
	 *  a child of widget
	 * is_secondary:
	 *  if TRUE, the child appears in a secondary group of the
	 *  button box.
	 * Property Details
	 * The "layout-style" property
	 *  "layout-style" GtkButtonBoxStyle : Read / Write
	 * How to layout the buttons in the box. Possible values are default, spread, edge, start and end.
	 * Default value: GTK_BUTTONBOX_DEFAULT_STYLE
	 * Child Property Details
	 * The "secondary" child property
	 *  "secondary" gboolean : Read / Write
	 * If TRUE, the child appears in a secondary group of children, suitable for, e.g., help buttons.
	 * Default value: FALSE
	 * Style Property Details
	 * The "child-internal-pad-x" style property
	 *  "child-internal-pad-x" gint : Read
	 * Amount to increase child's size on either side.
	 * Allowed values: >= 0
	 * Default value: 4
	 */
	public void setChildSecondary(Widget child, int isSecondary)
	{
		// void gtk_button_box_set_child_secondary  (GtkButtonBox *widget,  GtkWidget *child,  gboolean is_secondary);
		gtk_button_box_set_child_secondary(gtkButtonBox, (child is null) ? null : child.getWidgetStruct(), isSecondary);
	}
	
	
	
}
