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
 * inFile  = AtkComponent.html
 * outPack = atk
 * outFile = Component
 * strct   = AtkComponent
 * realStrct=
 * ctorStrct=
 * clss    = Component
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- atk_component_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- atk.ObjectAtk
 * structWrap:
 * 	- AtkObject* -> ObjectAtk
 * module aliases:
 * local aliases:
 * overrides:
 */

module atk.Component;

public  import gtkc.atktypes;

private import gtkc.atk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import atk.ObjectAtk;




/**
 * AtkComponent should be implemented by most if not all UI elements with
 * an actual on-screen presence, i.e. components which can be said to have
 * a screen-coordinate bounding box. Virtually all widgets will need to
 * have AtkComponent implementations provided for their corresponding
 * AtkObject class. In short, only UI elements which are *not* GUI
 * elements will omit this ATK interface.
 *
 * A possible exception might be textual information with a transparent
 * background, in which case text glyph bounding box information is
 * provided by AtkText.
 */
public class Component
{
	
	/** the main Gtk struct */
	protected AtkComponent* atkComponent;
	
	
	public AtkComponent* getComponentStruct()
	{
		return atkComponent;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)atkComponent;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (AtkComponent* atkComponent)
	{
		this.atkComponent = atkComponent;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(AtkRectangle*, Component)[] onBoundsChangedListeners;
	/**
	 * The 'bounds-changed" signal is emitted when the bposition or size of the
	 * a component changes.
	 */
	void addOnBoundsChanged(void delegate(AtkRectangle*, Component) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("bounds-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"bounds-changed",
			cast(GCallback)&callBackBoundsChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["bounds-changed"] = 1;
		}
		onBoundsChangedListeners ~= dlg;
	}
	extern(C) static void callBackBoundsChanged(AtkComponent* atkcomponentStruct, AtkRectangle* arg1, Component _component)
	{
		foreach ( void delegate(AtkRectangle*, Component) dlg ; _component.onBoundsChangedListeners )
		{
			dlg(arg1, _component);
		}
	}
	
	
	/**
	 * Add the specified handler to the set of functions to be called
	 * when this object receives focus events (in or out). If the handler is
	 * already added it is not added again
	 * Params:
	 * handler = The AtkFocusHandler to be attached to component
	 * Returns: a handler id which can be used in atk_component_remove_focus_handler or zero if the handler was already added.
	 */
	public uint addFocusHandler(AtkFocusHandler handler)
	{
		// guint atk_component_add_focus_handler (AtkComponent *component,  AtkFocusHandler handler);
		return atk_component_add_focus_handler(atkComponent, handler);
	}
	
	/**
	 * Checks whether the specified point is within the extent of the component.
	 * Params:
	 * x = x coordinate
	 * y = y coordinate
	 * coordType = specifies whether the coordinates are relative to the screen
	 * or to the components top level window
	 * Returns: TRUE or FALSE indicating whether the specified point is within the extent of the component or not
	 */
	public int contains(int x, int y, AtkCoordType coordType)
	{
		// gboolean atk_component_contains (AtkComponent *component,  gint x,  gint y,  AtkCoordType coord_type);
		return atk_component_contains(atkComponent, x, y, coordType);
	}
	
	/**
	 * Gets the rectangle which gives the extent of the component.
	 * Params:
	 * x = address of gint to put x coordinate
	 * y = address of gint to put y coordinate
	 * width = address of gint to put width
	 * height = address of gint to put height
	 * coordType = specifies whether the coordinates are relative to the screen
	 * or to the components top level window
	 */
	public void getExtents(out int x, out int y, out int width, out int height, AtkCoordType coordType)
	{
		// void atk_component_get_extents (AtkComponent *component,  gint *x,  gint *y,  gint *width,  gint *height,  AtkCoordType coord_type);
		atk_component_get_extents(atkComponent, &x, &y, &width, &height, coordType);
	}
	
	/**
	 * Gets the layer of the component.
	 * Returns: an AtkLayer which is the layer of the component
	 */
	public AtkLayer getLayer()
	{
		// AtkLayer atk_component_get_layer (AtkComponent *component);
		return atk_component_get_layer(atkComponent);
	}
	
	/**
	 * Gets the zorder of the component. The value G_MININT will be returned
	 * if the layer of the component is not ATK_LAYER_MDI or ATK_LAYER_WINDOW.
	 * Returns: a gint which is the zorder of the component, i.e. the depth at which the component is shown in relation to other components in the same container.
	 */
	public int getMdiZorder()
	{
		// gint atk_component_get_mdi_zorder (AtkComponent *component);
		return atk_component_get_mdi_zorder(atkComponent);
	}
	
	/**
	 * Gets the position of component in the form of
	 * a point specifying component's top-left corner.
	 * Params:
	 * x = address of gint to put x coordinate position
	 * y = address of gint to put y coordinate position
	 * coordType = specifies whether the coordinates are relative to the screen
	 * or to the components top level window
	 */
	public void getPosition(out int x, out int y, AtkCoordType coordType)
	{
		// void atk_component_get_position (AtkComponent *component,  gint *x,  gint *y,  AtkCoordType coord_type);
		atk_component_get_position(atkComponent, &x, &y, coordType);
	}
	
	/**
	 * Gets the size of the component in terms of width and height.
	 * Params:
	 * width = address of gint to put width of component
	 * height = address of gint to put height of component
	 */
	public void getSize(out int width, out int height)
	{
		// void atk_component_get_size (AtkComponent *component,  gint *width,  gint *height);
		atk_component_get_size(atkComponent, &width, &height);
	}
	
	/**
	 * Grabs focus for this component.
	 * Returns: TRUE if successful, FALSE otherwise.
	 */
	public int grabFocus()
	{
		// gboolean atk_component_grab_focus (AtkComponent *component);
		return atk_component_grab_focus(atkComponent);
	}
	
	/**
	 * Gets a reference to the accessible child, if one exists, at the
	 * coordinate point specified by x and y.
	 * Params:
	 * x = x coordinate
	 * y = y coordinate
	 * coordType = specifies whether the coordinates are relative to the screen
	 * or to the components top level window
	 * Returns: a reference to the accessible child, if one exists. [transfer full]
	 */
	public ObjectAtk refAccessibleAtPoint(int x, int y, AtkCoordType coordType)
	{
		// AtkObject * atk_component_ref_accessible_at_point  (AtkComponent *component,  gint x,  gint y,  AtkCoordType coord_type);
		auto p = atk_component_ref_accessible_at_point(atkComponent, x, y, coordType);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ObjectAtk)(cast(AtkObject*) p);
	}
	
	/**
	 * Remove the handler specified by handler_id from the list of
	 * functions to be executed when this object receives focus events
	 * (in or out).
	 * Params:
	 * handlerId = the handler id of the focus handler to be removed
	 * from component
	 */
	public void removeFocusHandler(uint handlerId)
	{
		// void atk_component_remove_focus_handler (AtkComponent *component,  guint handler_id);
		atk_component_remove_focus_handler(atkComponent, handlerId);
	}
	
	/**
	 * Sets the extents of component.
	 * Params:
	 * x = x coordinate
	 * y = y coordinate
	 * width = width to set for component
	 * height = height to set for component
	 * coordType = specifies whether the coordinates are relative to the screen
	 * or to the components top level window
	 * Returns: TRUE or FALSE whether the extents were set or not
	 */
	public int setExtents(int x, int y, int width, int height, AtkCoordType coordType)
	{
		// gboolean atk_component_set_extents (AtkComponent *component,  gint x,  gint y,  gint width,  gint height,  AtkCoordType coord_type);
		return atk_component_set_extents(atkComponent, x, y, width, height, coordType);
	}
	
	/**
	 * Sets the postition of component.
	 * Params:
	 * x = x coordinate
	 * y = y coordinate
	 * coordType = specifies whether the coordinates are relative to the screen
	 * or to the components top level window
	 * Returns: TRUE or FALSE whether or not the position was set or not
	 */
	public int setPosition(int x, int y, AtkCoordType coordType)
	{
		// gboolean atk_component_set_position (AtkComponent *component,  gint x,  gint y,  AtkCoordType coord_type);
		return atk_component_set_position(atkComponent, x, y, coordType);
	}
	
	/**
	 * Set the size of the component in terms of width and height.
	 * Params:
	 * width = width to set for component
	 * height = height to set for component
	 * Returns: TRUE or FALSE whether the size was set or not
	 */
	public int setSize(int width, int height)
	{
		// gboolean atk_component_set_size (AtkComponent *component,  gint width,  gint height);
		return atk_component_set_size(atkComponent, width, height);
	}
	
	/**
	 * Returns the alpha value (i.e. the opacity) for this
	 * component, on a scale from 0 (fully transparent) to 1.0
	 * (fully opaque).
	 * Since 1.12
	 * Signal Details
	 * The "bounds-changed" signal
	 * void user_function (AtkComponent *atkcomponent,
	 *  AtkRectangle *arg1,
	 *  gpointer user_data) : Run Last
	 * The 'bounds-changed" signal is emitted when the bposition or size of the
	 * a component changes.
	 * Returns: An alpha value from 0 to 1.0, inclusive.
	 */
	public double getAlpha()
	{
		// gdouble atk_component_get_alpha (AtkComponent *component);
		return atk_component_get_alpha(atkComponent);
	}
}
