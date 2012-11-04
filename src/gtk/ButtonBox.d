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
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.Button
 * 	- gtk.HButtonBox
 * 	- gtk.VButtonBox
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.ButtonBox;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gtk.Button;
private import gtk.HButtonBox;
private import gtk.VButtonBox;
private import gtk.Widget;



private import gtk.Box;

/**
 * Description
 * A button box should be used to provide a consistent layout of buttons
 * throughout your application. The layout/spacing can be altered by the
 * programmer, or if desired, by the user to alter the 'feel' of a
 * program to a small degree.
 * gtk_button_box_get_layout() and gtk_button_box_set_layout() retrieve and
 * alter the method used to spread the buttons in a button box across the
 * container, respectively.
 * The main purpose of GtkButtonBox is to make sure the children have all the
 * same size. GtkButtonBox gives all children the same size, but it does allow
 * 'outliers' to keep their own larger size. To force all children to be
 * strictly the same size without exceptions, you can set the
 * "homogeneous" property to TRUE.
 * To excempt individual children from homogeneous sizing regardless of their
 * 'outlier' status, you can set the "non-homogeneous" child
 * property.
 */
public class ButtonBox : Box
{
	
	/** the main Gtk struct */
	protected GtkButtonBox* gtkButtonBox;
	
	
	public GtkButtonBox* getButtonBoxStruct()
	{
		return gtkButtonBox;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
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
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkButtonBox = cast(GtkButtonBox*)obj;
	}
	
	/** */
	static ButtonBox createActionBox(
	void delegate(Button) onClicked,
	StockID[] stocks,
	string[] actions,
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
	
	/** */
	static ButtonBox createOkBox(void delegate(Button) onClicked)
	{
		static StockID[] stocks = [StockID.OK];
		string[] actions;
		actions ~= "action.ok";
		return createActionBox(onClicked, stocks, actions);
	}
	
	/** */
	static ButtonBox createOkCancelBox(void delegate(Button) onClicked)
	{
		static StockID[] stocks = [StockID.OK, StockID.CANCEL];
		string[] actions;
		actions ~= "action.ok";
		actions ~= "action.cancel";
		return createActionBox(onClicked, stocks, actions);
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkButtonBox.
	 * Params:
	 * orientation = the box' orientation.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GtkOrientation orientation)
	{
		// GtkWidget * gtk_button_box_new (GtkOrientation orientation);
		auto p = gtk_button_box_new(orientation);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_button_box_new(orientation)");
		}
		this(cast(GtkButtonBox*) p);
	}
	
	/**
	 * Retrieves the method being used to arrange the buttons in a button box.
	 * Returns: the method used to lay out buttons in widget.
	 */
	public GtkButtonBoxStyle getLayout()
	{
		// GtkButtonBoxStyle gtk_button_box_get_layout (GtkButtonBox *widget);
		return gtk_button_box_get_layout(gtkButtonBox);
	}
	
	/**
	 * Returns whether child should appear in a secondary group of children.
	 * Since 2.4
	 * Params:
	 * child = a child of widget
	 * Returns: whether child should appear in a secondary group of children.
	 */
	public int getChildSecondary(Widget child)
	{
		// gboolean gtk_button_box_get_child_secondary (GtkButtonBox *widget,  GtkWidget *child);
		return gtk_button_box_get_child_secondary(gtkButtonBox, (child is null) ? null : child.getWidgetStruct());
	}
	
	/**
	 * Returns whether the child is exempted from homogenous
	 * sizing.
	 * Params:
	 * child = a child of widget
	 * Returns: TRUE if the child is not subject to homogenous sizing Since 3.2
	 */
	public int getChildNonHomogeneous(Widget child)
	{
		// gboolean gtk_button_box_get_child_non_homogeneous  (GtkButtonBox *widget,  GtkWidget *child);
		return gtk_button_box_get_child_non_homogeneous(gtkButtonBox, (child is null) ? null : child.getWidgetStruct());
	}
	
	/**
	 * Changes the way buttons are arranged in their container.
	 * Params:
	 * layoutStyle = the new layout style
	 */
	public void setLayout(GtkButtonBoxStyle layoutStyle)
	{
		// void gtk_button_box_set_layout (GtkButtonBox *widget,  GtkButtonBoxStyle layout_style);
		gtk_button_box_set_layout(gtkButtonBox, layoutStyle);
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
	 * Params:
	 * child = a child of widget
	 * isSecondary = if TRUE, the child appears in a secondary group of the
	 * button box.
	 */
	public void setChildSecondary(Widget child, int isSecondary)
	{
		// void gtk_button_box_set_child_secondary (GtkButtonBox *widget,  GtkWidget *child,  gboolean is_secondary);
		gtk_button_box_set_child_secondary(gtkButtonBox, (child is null) ? null : child.getWidgetStruct(), isSecondary);
	}
	
	/**
	 * Sets whether the child is exempted from homogeous sizing.
	 * Params:
	 * child = a child of widget
	 * nonHomogeneous = the new value
	 * Since 3.2
	 */
	public void setChildNonHomogeneous(Widget child, int nonHomogeneous)
	{
		// void gtk_button_box_set_child_non_homogeneous  (GtkButtonBox *widget,  GtkWidget *child,  gboolean non_homogeneous);
		gtk_button_box_set_child_non_homogeneous(gtkButtonBox, (child is null) ? null : child.getWidgetStruct(), nonHomogeneous);
	}
}
