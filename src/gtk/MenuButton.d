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
 * inFile  = GtkMenuButton.html
 * outPack = gtk
 * outFile = MenuButton
 * strct   = GtkMenuButton
 * realStrct=
 * ctorStrct=
 * clss    = MenuButton
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_menu_button_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gio.MenuModel
 * 	- gtk.Menu
 * 	- gtk.Widget
 * structWrap:
 * 	- GMenuModel* -> MenuModel
 * 	- GtkMenu* -> Menu
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * 	- getDirection -> getMenuDirection
 * 	- setDirection -> setMenuDirection
 * overrides:
 */

module gtk.MenuButton;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gio.MenuModel;
private import gtk.Menu;
private import gtk.Widget;



private import gtk.ToggleButton;

/**
 * Description
 * The GtkMenuButton widget is used to display a menu when clicked on.
 * This menu can be provided either as a GtkMenu, or an abstract GMenuModel.
 * The GtkMenuButton widget can hold any valid child widget. That is, it
 * can hold almost any other standard GtkWidget. The most commonly used
 * child is the provided GtkArrow.
 * The positioning of the menu is determined by the "direction"
 * property of the menu button and the "halign" or "valign"
 * properties of the menu. For example, when the direction is GTK_ARROW_DOWN
 * and the horizontal alignment is GTK_ALIGN_START, the menu will be
 * positioned below the button, with the starting edge (depending on the
 * text direction) of the menu aligned with the starting edge of the button.
 * If there is not enough space below the button, the menu is popped up above
 * the button instead. If the alignment would move part of the menu offscreen,
 * it is 'pushed in'.
 * halign = start
 * halign = center
 * halign = end
 * direction = down
 * direction = up
 * direction = left
 * direction = right
 * valign = start
 * valign = center
 * valign = end
 */
public class MenuButton : ToggleButton
{
	
	/** the main Gtk struct */
	protected GtkMenuButton* gtkMenuButton;
	
	
	public GtkMenuButton* getMenuButtonStruct()
	{
		return gtkMenuButton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkMenuButton;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkMenuButton* gtkMenuButton)
	{
		super(cast(GtkToggleButton*)gtkMenuButton);
		this.gtkMenuButton = gtkMenuButton;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkMenuButton = cast(GtkMenuButton*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkMenuButton widget with downwards-pointing
	 * arrow as the only child. You can replace the child widget
	 * with another GtkWidget should you wish to.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_menu_button_new (void);
		auto p = gtk_menu_button_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_menu_button_new()");
		}
		this(cast(GtkMenuButton*) p);
	}
	
	/**
	 * Sets the GtkMenu that will be popped up when the button is clicked,
	 * or NULL to disable the button. If "menu-model" is set,
	 * it will be set to NULL.
	 * Params:
	 * popup = a GtkMenu. [allow-none]
	 * Since 3.6
	 */
	public void setPopup(Widget popup)
	{
		// void gtk_menu_button_set_popup (GtkMenuButton *menu_button,  GtkWidget *popup);
		gtk_menu_button_set_popup(gtkMenuButton, (popup is null) ? null : popup.getWidgetStruct());
	}
	
	/**
	 * Returns the GtkMenu that pops out of the button.
	 * Returns: a GtkMenu or NULL. [transfer none] Since 3.6
	 */
	public Menu getPopup()
	{
		// GtkMenu * gtk_menu_button_get_popup (GtkMenuButton *menu_button);
		auto p = gtk_menu_button_get_popup(gtkMenuButton);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Menu)(cast(GtkMenu*) p);
	}
	
	/**
	 * Sets the GMenuModel from which the "menu" property will be
	 * filled in, or NULL to disable the button.
	 * The GtkMenu will be created with gtk_menu_new_from_model(), so actions
	 * will be connected as documented there.
	 * If you "menu" * is already set, then its content will be lost
	 * and replaced by our newly created GtkMenu.
	 * Params:
	 * menuModel = a GMenuModel. [allow-none]
	 * Since 3.6
	 */
	public void setMenuModel(MenuModel menuModel)
	{
		// void gtk_menu_button_set_menu_model (GtkMenuButton *menu_button,  GMenuModel *menu_model);
		gtk_menu_button_set_menu_model(gtkMenuButton, (menuModel is null) ? null : menuModel.getMenuModelStruct());
	}
	
	/**
	 * Returns the GMenuModel used to generate the menu.
	 * Returns: a GMenuModel or NULL. [transfer none] Since 3.6
	 */
	public MenuModel getMenuModel()
	{
		// GMenuModel * gtk_menu_button_get_menu_model (GtkMenuButton *menu_button);
		auto p = gtk_menu_button_get_menu_model(gtkMenuButton);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(MenuModel)(cast(GMenuModel*) p);
	}
	
	/**
	 * Sets the direction in which the menu will be popped up, as
	 * well as changing the arrow's direction. The child will not
	 * be changed to an arrow if it was customized.
	 * If the menu when popped out would have collided with screen edges,
	 * we will do our best to keep it inside the screen and fully visible.
	 * If you pass GTK_ARROW_NONE for a direction, the menu will behave
	 * as if you passed GTK_ARROW_DOWN (although you won't see any arrows).
	 * Params:
	 * direction = a GtkArrowType
	 * Since 3.6
	 */
	public void setMenuDirection(GtkArrowType direction)
	{
		// void gtk_menu_button_set_direction (GtkMenuButton *menu_button,  GtkArrowType direction);
		gtk_menu_button_set_direction(gtkMenuButton, direction);
	}
	
	/**
	 * Returns the direction the menu will be pointing at when popped up.
	 * Returns: a GtkArrowType value. Since 3.6
	 */
	public GtkArrowType getMenuDirection()
	{
		// GtkArrowType gtk_menu_button_get_direction (GtkMenuButton *menu_button);
		return gtk_menu_button_get_direction(gtkMenuButton);
	}
	
	/**
	 * Sets the GtkWidget to use to line the menu with when popped up. Note that
	 * the align_widget must contain the GtkMenuButton itself.
	 * Setting it to NULL means that the popup menu will be aligned with the
	 * button itself.
	 * Params:
	 * alignWidget = a GtkWidget. [allow-none]
	 * Since 3.6
	 */
	public void setAlignWidget(Widget alignWidget)
	{
		// void gtk_menu_button_set_align_widget (GtkMenuButton *menu_button,  GtkWidget *align_widget);
		gtk_menu_button_set_align_widget(gtkMenuButton, (alignWidget is null) ? null : alignWidget.getWidgetStruct());
	}
	
	/**
	 * Returns the parent GtkWidget to use to line up with menu.
	 * Returns: a GtkWidget value or NULL. [transfer none] Since 3.6
	 */
	public Widget getAlignWidget()
	{
		// GtkWidget * gtk_menu_button_get_align_widget (GtkMenuButton *menu_button);
		auto p = gtk_menu_button_get_align_widget(gtkMenuButton);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
}
