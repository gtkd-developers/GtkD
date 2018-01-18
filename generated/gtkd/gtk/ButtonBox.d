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


module gtk.ButtonBox;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Box;
private import gtk.Button;
private import gtk.HButtonBox;
private import gtk.VButtonBox;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public class ButtonBox : Box
{
	/** the main Gtk struct */
	protected GtkButtonBox* gtkButtonBox;

	/** Get the main Gtk struct */
	public GtkButtonBox* getButtonBoxStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkButtonBox;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkButtonBox;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkButtonBox* gtkButtonBox, bool ownedRef = false)
	{
		this.gtkButtonBox = gtkButtonBox;
		super(cast(GtkBox*)gtkButtonBox, ownedRef);
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

	/** */
	public static GType getType()
	{
		return gtk_button_box_get_type();
	}

	/**
	 * Creates a new #GtkButtonBox.
	 *
	 * Params:
	 *     orientation = the box's orientation.
	 *
	 * Returns: a new #GtkButtonBox.
	 *
	 * Since: 3.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GtkOrientation orientation)
	{
		auto p = gtk_button_box_new(orientation);

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkButtonBox*) p);
	}

	/**
	 * Returns whether the child is exempted from homogenous
	 * sizing.
	 *
	 * Params:
	 *     child = a child of @widget
	 *
	 * Returns: %TRUE if the child is not subject to homogenous sizing
	 *
	 * Since: 3.2
	 */
	public bool getChildNonHomogeneous(Widget child)
	{
		return gtk_button_box_get_child_non_homogeneous(gtkButtonBox, (child is null) ? null : child.getWidgetStruct()) != 0;
	}

	/**
	 * Returns whether @child should appear in a secondary group of children.
	 *
	 * Params:
	 *     child = a child of @widget
	 *
	 * Returns: whether @child should appear in a secondary group of children.
	 *
	 * Since: 2.4
	 */
	public bool getChildSecondary(Widget child)
	{
		return gtk_button_box_get_child_secondary(gtkButtonBox, (child is null) ? null : child.getWidgetStruct()) != 0;
	}

	/**
	 * Retrieves the method being used to arrange the buttons in a button box.
	 *
	 * Returns: the method used to lay out buttons in @widget.
	 */
	public GtkButtonBoxStyle getLayout()
	{
		return gtk_button_box_get_layout(gtkButtonBox);
	}

	/**
	 * Sets whether the child is exempted from homogeous sizing.
	 *
	 * Params:
	 *     child = a child of @widget
	 *     nonHomogeneous = the new value
	 *
	 * Since: 3.2
	 */
	public void setChildNonHomogeneous(Widget child, bool nonHomogeneous)
	{
		gtk_button_box_set_child_non_homogeneous(gtkButtonBox, (child is null) ? null : child.getWidgetStruct(), nonHomogeneous);
	}

	/**
	 * Sets whether @child should appear in a secondary group of children.
	 * A typical use of a secondary child is the help button in a dialog.
	 *
	 * This group appears after the other children if the style
	 * is %GTK_BUTTONBOX_START, %GTK_BUTTONBOX_SPREAD or
	 * %GTK_BUTTONBOX_EDGE, and before the other children if the style
	 * is %GTK_BUTTONBOX_END. For horizontal button boxes, the definition
	 * of before/after depends on direction of the widget (see
	 * gtk_widget_set_direction()). If the style is %GTK_BUTTONBOX_START
	 * or %GTK_BUTTONBOX_END, then the secondary children are aligned at
	 * the other end of the button box from the main children. For the
	 * other styles, they appear immediately next to the main children.
	 *
	 * Params:
	 *     child = a child of @widget
	 *     isSecondary = if %TRUE, the @child appears in a secondary group of the
	 *         button box.
	 */
	public void setChildSecondary(Widget child, bool isSecondary)
	{
		gtk_button_box_set_child_secondary(gtkButtonBox, (child is null) ? null : child.getWidgetStruct(), isSecondary);
	}

	/**
	 * Changes the way buttons are arranged in their container.
	 *
	 * Params:
	 *     layoutStyle = the new layout style
	 */
	public void setLayout(GtkButtonBoxStyle layoutStyle)
	{
		gtk_button_box_set_layout(gtkButtonBox, layoutStyle);
	}
}
