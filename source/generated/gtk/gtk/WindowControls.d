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


module gtk.WindowControls;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkWindowControls` shows window frame controls.
 * 
 * Typical window frame controls are minimize, maximize and close buttons,
 * and the window icon.
 * 
 * ![An example GtkWindowControls](windowcontrols.png)
 * 
 * `GtkWindowControls` only displays start or end side of the controls (see
 * [property@Gtk.WindowControls:side]), so it's intended to be always used
 * in pair with another `GtkWindowControls` for the opposite side, for example:
 * 
 * ```xml
 * <object class="GtkBox">
 * <child>
 * <object class="GtkWindowControls">
 * <property name="side">start</property>
 * </object>
 * </child>
 * 
 * ...
 * 
 * <child>
 * <object class="GtkWindowControls">
 * <property name="side">end</property>
 * </object>
 * </child>
 * </object>
 * ```
 * 
 * # CSS nodes
 * 
 * ```
 * windowcontrols
 * ├── [image.icon]
 * ├── [button.minimize]
 * ├── [button.maximize]
 * ╰── [button.close]
 * ```
 * 
 * A `GtkWindowControls`' CSS node is called windowcontrols. It contains
 * subnodes corresponding to each title button. Which of the title buttons
 * exist and where they are placed exactly depends on the desktop environment
 * and [property@Gtk.WindowControls:decoration-layout] value.
 * 
 * When [property@Gtk.WindowControls:empty] is %TRUE, it gets the .empty
 * style class.
 * 
 * # Accessibility
 * 
 * `GtkWindowControls` uses the %GTK_ACCESSIBLE_ROLE_GROUP role.
 */
public class WindowControls : Widget
{
	/** the main Gtk struct */
	protected GtkWindowControls* gtkWindowControls;

	/** Get the main Gtk struct */
	public GtkWindowControls* getWindowControlsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkWindowControls;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkWindowControls;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkWindowControls* gtkWindowControls, bool ownedRef = false)
	{
		this.gtkWindowControls = gtkWindowControls;
		super(cast(GtkWidget*)gtkWindowControls, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_window_controls_get_type();
	}

	/**
	 * Creates a new `GtkWindowControls`.
	 *
	 * Params:
	 *     side = the side
	 *
	 * Returns: a new `GtkWindowControls`.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GtkPackType side)
	{
		auto __p = gtk_window_controls_new(side);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkWindowControls*) __p);
	}

	/**
	 * Gets the decoration layout of this `GtkWindowControls`.
	 *
	 * Returns: the decoration layout or %NULL if it is unset
	 */
	public string getDecorationLayout()
	{
		return Str.toString(gtk_window_controls_get_decoration_layout(gtkWindowControls));
	}

	/**
	 * Gets whether the widget has any window buttons.
	 *
	 * Returns: %TRUE if the widget has window buttons, otherwise %FALSE
	 */
	public bool getEmpty()
	{
		return gtk_window_controls_get_empty(gtkWindowControls) != 0;
	}

	/**
	 * Gets the side to which this `GtkWindowControls` instance belongs.
	 *
	 * Returns: the side
	 */
	public GtkPackType getSide()
	{
		return gtk_window_controls_get_side(gtkWindowControls);
	}

	/**
	 * Sets the decoration layout for the title buttons.
	 *
	 * This overrides the [property@Gtk.Settings:gtk-decoration-layout]
	 * setting.
	 *
	 * The format of the string is button names, separated by commas.
	 * A colon separates the buttons that should appear on the left
	 * from those on the right. Recognized button names are minimize,
	 * maximize, close and icon (the window icon).
	 *
	 * For example, “icon:minimize,maximize,close” specifies a icon
	 * on the left, and minimize, maximize and close buttons on the right.
	 *
	 * If [property@Gtk.WindowControls:side] value is @GTK_PACK_START, @self
	 * will display the part before the colon, otherwise after that.
	 *
	 * Params:
	 *     layout = a decoration layout, or %NULL to unset the layout
	 */
	public void setDecorationLayout(string layout)
	{
		gtk_window_controls_set_decoration_layout(gtkWindowControls, Str.toStringz(layout));
	}

	/**
	 * Determines which part of decoration layout the `GtkWindowControls` uses.
	 *
	 * See [property@Gtk.WindowControls:decoration-layout].
	 *
	 * Params:
	 *     side = a side
	 */
	public void setSide(GtkPackType side)
	{
		gtk_window_controls_set_side(gtkWindowControls, side);
	}
}
