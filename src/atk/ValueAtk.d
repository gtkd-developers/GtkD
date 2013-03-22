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
 * inFile  = AtkValue.html
 * outPack = atk
 * outFile = ValueAtk
 * strct   = AtkValue
 * realStrct=
 * ctorStrct=
 * clss    = ValueAtk
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- atk_value_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gobject.Value
 * structWrap:
 * 	- GValue* -> Value
 * module aliases:
 * local aliases:
 * overrides:
 */

module atk.ValueAtk;

public  import gtkc.atktypes;

private import gtkc.atk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gobject.Value;




/**
 * AtkValue should be implemented for components which either display a
 * value from a bounded range, or which allow the user to specify a value
 * from a bounded range, or both. For instance, most sliders and range
 * controls, as well as dials, should have AtkObject representations which
 * implement AtkValue on the component's behalf. AtKValues may be
 * read-only, in which case attempts to alter the value return FALSE to
 * indicate failure.
 */
public class ValueAtk
{
	
	/** the main Gtk struct */
	protected AtkValue* atkValue;
	
	
	public AtkValue* getValueAtkStruct()
	{
		return atkValue;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)atkValue;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (AtkValue* atkValue)
	{
		this.atkValue = atkValue;
	}
	
	/**
	 */
	
	/**
	 * Gets the value of this object.
	 * Params:
	 * value = a GValue representing the current accessible value
	 */
	public void getCurrentValue(Value value)
	{
		// void atk_value_get_current_value (AtkValue *obj,  GValue *value);
		atk_value_get_current_value(atkValue, (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Gets the maximum value of this object.
	 * Params:
	 * value = a GValue representing the maximum accessible value
	 */
	public void getMaximumValue(Value value)
	{
		// void atk_value_get_maximum_value (AtkValue *obj,  GValue *value);
		atk_value_get_maximum_value(atkValue, (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Gets the minimum value of this object.
	 * Params:
	 * value = a GValue representing the minimum accessible value
	 */
	public void getMinimumValue(Value value)
	{
		// void atk_value_get_minimum_value (AtkValue *obj,  GValue *value);
		atk_value_get_minimum_value(atkValue, (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Sets the value of this object.
	 * Params:
	 * value = a GValue which is the desired new accessible value.
	 * Returns: TRUE if new value is successfully set, FALSE otherwise.
	 */
	public int setCurrentValue(Value value)
	{
		// gboolean atk_value_set_current_value (AtkValue *obj,  const GValue *value);
		return atk_value_set_current_value(atkValue, (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Gets the minimum increment by which the value of this object may be changed. If zero,
	 * the minimum increment is undefined, which may mean that it is limited only by the
	 * floating point precision of the platform.
	 * Since 1.12
	 * Params:
	 * value = a GValue representing the minimum increment by which the accessible value may be changed
	 */
	public void getMinimumIncrement(Value value)
	{
		// void atk_value_get_minimum_increment (AtkValue *obj,  GValue *value);
		atk_value_get_minimum_increment(atkValue, (value is null) ? null : value.getValueStruct());
	}
}
