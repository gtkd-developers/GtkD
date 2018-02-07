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


module atk.ComponentT;

public  import atk.ObjectAtk;
public  import atk.Rectangle;
public  import atk.c.functions;
public  import atk.c.types;
public  import gobject.ObjectG;
public  import gobject.Signals;
public  import gtkc.atktypes;
public  import std.algorithm;


/**
 * #AtkComponent should be implemented by most if not all UI elements
 * with an actual on-screen presence, i.e. components which can be
 * said to have a screen-coordinate bounding box.  Virtually all
 * widgets will need to have #AtkComponent implementations provided
 * for their corresponding #AtkObject class.  In short, only UI
 * elements which are *not* GUI elements will omit this ATK interface.
 * 
 * A possible exception might be textual information with a
 * transparent background, in which case text glyph bounding box
 * information is provided by #AtkText.
 */
public template ComponentT(TStruct)
{
	/** Get the main Gtk struct */
	public AtkComponent* getComponentStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(AtkComponent*)getStruct();
	}


	/**
	 * Add the specified handler to the set of functions to be called
	 * when this object receives focus events (in or out). If the handler is
	 * already added it is not added again
	 *
	 * Deprecated: If you need to track when an object gains or
	 * lose the focus, use the #AtkObject::state-change "focused" notification instead.
	 *
	 * Params:
	 *     handler = The #AtkFocusHandler to be attached to @component
	 *
	 * Returns: a handler id which can be used in atk_component_remove_focus_handler()
	 *     or zero if the handler was already added.
	 */
	public uint addFocusHandler(AtkFocusHandler handler)
	{
		return atk_component_add_focus_handler(getComponentStruct(), handler);
	}

	/**
	 * Checks whether the specified point is within the extent of the @component.
	 *
	 * Toolkit implementor note: ATK provides a default implementation for
	 * this virtual method. In general there are little reason to
	 * re-implement it.
	 *
	 * Params:
	 *     x = x coordinate
	 *     y = y coordinate
	 *     coordType = specifies whether the coordinates are relative to the screen
	 *         or to the components top level window
	 *
	 * Returns: %TRUE or %FALSE indicating whether the specified point is within
	 *     the extent of the @component or not
	 */
	public bool contains(int x, int y, AtkCoordType coordType)
	{
		return atk_component_contains(getComponentStruct(), x, y, coordType) != 0;
	}

	/**
	 * Returns the alpha value (i.e. the opacity) for this
	 * @component, on a scale from 0 (fully transparent) to 1.0
	 * (fully opaque).
	 *
	 * Returns: An alpha value from 0 to 1.0, inclusive.
	 *
	 * Since: 1.12
	 */
	public double getAlpha()
	{
		return atk_component_get_alpha(getComponentStruct());
	}

	/**
	 * Gets the rectangle which gives the extent of the @component.
	 *
	 * Params:
	 *     x = address of #gint to put x coordinate
	 *     y = address of #gint to put y coordinate
	 *     width = address of #gint to put width
	 *     height = address of #gint to put height
	 *     coordType = specifies whether the coordinates are relative to the screen
	 *         or to the components top level window
	 */
	public void getExtents(out int x, out int y, out int width, out int height, AtkCoordType coordType)
	{
		atk_component_get_extents(getComponentStruct(), &x, &y, &width, &height, coordType);
	}

	/**
	 * Gets the layer of the component.
	 *
	 * Returns: an #AtkLayer which is the layer of the component
	 */
	public override AtkLayer getLayer()
	{
		return atk_component_get_layer(getComponentStruct());
	}

	/**
	 * Gets the zorder of the component. The value G_MININT will be returned
	 * if the layer of the component is not ATK_LAYER_MDI or ATK_LAYER_WINDOW.
	 *
	 * Returns: a gint which is the zorder of the component, i.e. the depth at
	 *     which the component is shown in relation to other components in the same
	 *     container.
	 */
	public override int getMdiZorder()
	{
		return atk_component_get_mdi_zorder(getComponentStruct());
	}

	/**
	 * Gets the position of @component in the form of
	 * a point specifying @component's top-left corner.
	 *
	 * Deprecated: Since 2.12. Use atk_component_get_extents() instead.
	 *
	 * Params:
	 *     x = address of #gint to put x coordinate position
	 *     y = address of #gint to put y coordinate position
	 *     coordType = specifies whether the coordinates are relative to the screen
	 *         or to the components top level window
	 */
	public void getPosition(out int x, out int y, AtkCoordType coordType)
	{
		atk_component_get_position(getComponentStruct(), &x, &y, coordType);
	}

	/**
	 * Gets the size of the @component in terms of width and height.
	 *
	 * Deprecated: Since 2.12. Use atk_component_get_extents() instead.
	 *
	 * Params:
	 *     width = address of #gint to put width of @component
	 *     height = address of #gint to put height of @component
	 */
	public void getSize(out int width, out int height)
	{
		atk_component_get_size(getComponentStruct(), &width, &height);
	}

	/**
	 * Grabs focus for this @component.
	 *
	 * Returns: %TRUE if successful, %FALSE otherwise.
	 */
	public bool grabFocus()
	{
		return atk_component_grab_focus(getComponentStruct()) != 0;
	}

	/**
	 * Gets a reference to the accessible child, if one exists, at the
	 * coordinate point specified by @x and @y.
	 *
	 * Params:
	 *     x = x coordinate
	 *     y = y coordinate
	 *     coordType = specifies whether the coordinates are relative to the screen
	 *         or to the components top level window
	 *
	 * Returns: a reference to the accessible
	 *     child, if one exists
	 */
	public ObjectAtk refAccessibleAtPoint(int x, int y, AtkCoordType coordType)
	{
		auto p = atk_component_ref_accessible_at_point(getComponentStruct(), x, y, coordType);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p, true);
	}

	/**
	 * Remove the handler specified by @handler_id from the list of
	 * functions to be executed when this object receives focus events
	 * (in or out).
	 *
	 * Deprecated: If you need to track when an object gains or
	 * lose the focus, use the #AtkObject::state-change "focused" notification instead.
	 *
	 * Params:
	 *     handlerId = the handler id of the focus handler to be removed
	 *         from @component
	 */
	public void removeFocusHandler(uint handlerId)
	{
		atk_component_remove_focus_handler(getComponentStruct(), handlerId);
	}

	/**
	 * Sets the extents of @component.
	 *
	 * Params:
	 *     x = x coordinate
	 *     y = y coordinate
	 *     width = width to set for @component
	 *     height = height to set for @component
	 *     coordType = specifies whether the coordinates are relative to the screen
	 *         or to the components top level window
	 *
	 * Returns: %TRUE or %FALSE whether the extents were set or not
	 */
	public bool setExtents(int x, int y, int width, int height, AtkCoordType coordType)
	{
		return atk_component_set_extents(getComponentStruct(), x, y, width, height, coordType) != 0;
	}

	/**
	 * Sets the postition of @component.
	 *
	 * Params:
	 *     x = x coordinate
	 *     y = y coordinate
	 *     coordType = specifies whether the coordinates are relative to the screen
	 *         or to the components top level window
	 *
	 * Returns: %TRUE or %FALSE whether or not the position was set or not
	 */
	public bool setPosition(int x, int y, AtkCoordType coordType)
	{
		return atk_component_set_position(getComponentStruct(), x, y, coordType) != 0;
	}

	/**
	 * Set the size of the @component in terms of width and height.
	 *
	 * Params:
	 *     width = width to set for @component
	 *     height = height to set for @component
	 *
	 * Returns: %TRUE or %FALSE whether the size was set or not
	 */
	public bool setSize(int width, int height)
	{
		return atk_component_set_size(getComponentStruct(), width, height) != 0;
	}

	/**
	 * The 'bounds-changed" signal is emitted when the bposition or
	 * size of the component changes.
	 *
	 * Params:
	 *     arg1 = The AtkRectangle giving the new position and size.
	 */
	gulong addOnBoundsChanged(void delegate(Rectangle, ComponentIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "bounds-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
