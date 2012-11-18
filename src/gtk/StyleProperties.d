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
 * inFile  = gtk3-GtkStyleProperties.html
 * outPack = gtk
 * outFile = StyleProperties
 * strct   = GtkStyleProperties
 * realStrct=
 * ctorStrct=
 * clss    = StyleProperties
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GObject
 * implements:
 * prefixes:
 * 	- gtk_style_properties_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- std.stdarg
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gobject.ParamSpec
 * 	- gobject.Value
 * 	- gtk.SymbolicColor
 * structWrap:
 * 	- GParamSpec* -> ParamSpec
 * 	- GValue* -> Value
 * 	- GtkStyleProperties* -> StyleProperties
 * 	- GtkSymbolicColor* -> SymbolicColor
 * module aliases:
 * local aliases:
 * 	- getProperty -> getStyleProperty
 * 	- getValist -> getStyleValist
 * 	- setProperty -> setStyleProperty
 * 	- setValist -> setStyleValist
 * overrides:
 */

module gtk.StyleProperties;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ParamSpec;
private import gobject.Value;
private import gtk.SymbolicColor;


version(Tango) {
	private import tango.core.Vararg;

	version = druntime;
} else version(D_Version2) {
	private import core.vararg;

	version = druntime;
} else {
	private import std.stdarg;
}


private import gobject.ObjectG;

/**
 * Description
 * GtkStyleProperties provides the storage for style information
 * that is used by GtkStyleContext and other GtkStyleProvider
 * implementations.
 * Before style properties can be stored in GtkStyleProperties, they
 * must be registered with gtk_style_properties_register_property().
 * Unless you are writing a GtkStyleProvider implementation, you
 * are unlikely to use this API directly, as gtk_style_context_get()
 * and its variants are the preferred way to access styling information
 * from widget implementations and theming engine implementations
 * should use the APIs provided by GtkThemingEngine instead.
 */
public class StyleProperties : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkStyleProperties* gtkStyleProperties;
	
	
	public GtkStyleProperties* getStylePropertiesStruct()
	{
		return gtkStyleProperties;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkStyleProperties;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkStyleProperties* gtkStyleProperties)
	{
		super(cast(GObject*)gtkStyleProperties);
		this.gtkStyleProperties = gtkStyleProperties;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkStyleProperties = cast(GtkStyleProperties*)obj;
	}
	
	/**
	 */
	
	/**
	 * Clears all style information from props.
	 */
	public void clear()
	{
		// void gtk_style_properties_clear (GtkStyleProperties *props);
		gtk_style_properties_clear(gtkStyleProperties);
	}
	
	/**
	 * Gets a style property from props for the given state. When done with value,
	 * g_value_unset() needs to be called to free any allocated memory.
	 * Params:
	 * property = style property name
	 * state = state to retrieve the property value for
	 * value = return location for the style property value. [out][transfer full]
	 * Returns: TRUE if the property exists in props, FALSE otherwise Since 3.0
	 */
	public int getStyleProperty(string property, GtkStateFlags state, Value value)
	{
		// gboolean gtk_style_properties_get_property (GtkStyleProperties *props,  const gchar *property,  GtkStateFlags state,  GValue *value);
		return gtk_style_properties_get_property(gtkStyleProperties, Str.toStringz(property), state, (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Retrieves several style property values from props for a given state.
	 * Params:
	 * state = state to retrieve the property values for
	 * args = va_list of property name/return location pairs, followed by NULL
	 * Since 3.0
	 */
	public void getStyleValist(GtkStateFlags state, void* args)
	{
		// void gtk_style_properties_get_valist (GtkStyleProperties *props,  GtkStateFlags state,  va_list args);
		gtk_style_properties_get_valist(gtkStyleProperties, state, args);
	}
	
	/**
	 * Returns the symbolic color that is mapped
	 * to name.
	 * Params:
	 * name = color name to lookup
	 * Returns: The mapped color. [transfer none] Since 3.0
	 */
	public SymbolicColor lookupColor(string name)
	{
		// GtkSymbolicColor * gtk_style_properties_lookup_color (GtkStyleProperties *props,  const gchar *name);
		auto p = gtk_style_properties_lookup_color(gtkStyleProperties, Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SymbolicColor)(cast(GtkSymbolicColor*) p);
	}
	
	/**
	 * Returns TRUE if a property has been registered, if pspec or
	 * parse_func are not NULL, the GParamSpec and parsing function
	 * will be respectively returned.
	 * Params:
	 * propertyName = property name to look up
	 * parseFunc = return location for the parse function. [out]
	 * pspec = return location for the GParamSpec. [out][transfer none]
	 * Returns: TRUE if the property is registered, FALSE otherwise Since 3.0
	 */
	public static int lookupProperty(string propertyName, out GtkStylePropertyParser parseFunc, out ParamSpec pspec)
	{
		// gboolean gtk_style_properties_lookup_property  (const gchar *property_name,  GtkStylePropertyParser *parse_func,  GParamSpec **pspec);
		GParamSpec* outpspec = null;
		
		auto p = gtk_style_properties_lookup_property(Str.toStringz(propertyName), &parseFunc, &outpspec);
		
		pspec = ObjectG.getDObject!(ParamSpec)(outpspec);
		return p;
	}
	
	/**
	 * Maps color so it can be referenced by name. See
	 * gtk_style_properties_lookup_color()
	 * Params:
	 * name = color name
	 * color = GtkSymbolicColor to map name to
	 * Since 3.0
	 */
	public void mapColor(string name, SymbolicColor color)
	{
		// void gtk_style_properties_map_color (GtkStyleProperties *props,  const gchar *name,  GtkSymbolicColor *color);
		gtk_style_properties_map_color(gtkStyleProperties, Str.toStringz(name), (color is null) ? null : color.getSymbolicColorStruct());
	}
	
	/**
	 * Merges into props all the style information contained
	 * in props_to_merge. If replace is TRUE, the values
	 * will be overwritten, if it is FALSE, the older values
	 * will prevail.
	 * Params:
	 * props = a GtkStyleProperties
	 * propsToMerge = a second GtkStyleProperties
	 * replace = whether to replace values or not
	 * Since 3.0
	 */
	public void merge(StyleProperties propsToMerge, int replace)
	{
		// void gtk_style_properties_merge (GtkStyleProperties *props,  const GtkStyleProperties *props_to_merge,  gboolean replace);
		gtk_style_properties_merge(gtkStyleProperties, (propsToMerge is null) ? null : propsToMerge.getStylePropertiesStruct(), replace);
	}
	
	/**
	 * Returns a newly created GtkStyleProperties
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkStyleProperties * gtk_style_properties_new (void);
		auto p = gtk_style_properties_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_style_properties_new()");
		}
		this(cast(GtkStyleProperties*) p);
	}
	
	/**
	 * Registers a property so it can be used in the CSS file format.
	 * This function is the low-level equivalent of
	 * gtk_theming_engine_register_property(), if you are implementing
	 * a theming engine, you want to use that function instead.
	 * Params:
	 * parseFunc = parsing function to use, or NULL
	 * pspec = the GParamSpec for the new property
	 * Since 3.0
	 */
	public static void registerProperty(GtkStylePropertyParser parseFunc, ParamSpec pspec)
	{
		// void gtk_style_properties_register_property  (GtkStylePropertyParser parse_func,  GParamSpec *pspec);
		gtk_style_properties_register_property(parseFunc, (pspec is null) ? null : pspec.getParamSpecStruct());
	}
	
	/**
	 * Sets a styling property in props.
	 * Params:
	 * property = styling property to set
	 * state = state to set the value for
	 * value = new value for the property
	 * Since 3.0
	 */
	public void setStyleProperty(string property, GtkStateFlags state, Value value)
	{
		// void gtk_style_properties_set_property (GtkStyleProperties *props,  const gchar *property,  GtkStateFlags state,  const GValue *value);
		gtk_style_properties_set_property(gtkStyleProperties, Str.toStringz(property), state, (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Sets several style properties on props.
	 * Params:
	 * state = state to set the values for
	 * args = va_list of property name/value pairs, followed by NULL
	 * Since 3.0
	 */
	public void setStyleValist(GtkStateFlags state, void* args)
	{
		// void gtk_style_properties_set_valist (GtkStyleProperties *props,  GtkStateFlags state,  va_list args);
		gtk_style_properties_set_valist(gtkStyleProperties, state, args);
	}
	
	/**
	 * Unsets a style property in props.
	 * Params:
	 * property = property to unset
	 * state = state to unset
	 * Since 3.0
	 */
	public void unsetProperty(string property, GtkStateFlags state)
	{
		// void gtk_style_properties_unset_property (GtkStyleProperties *props,  const gchar *property,  GtkStateFlags state);
		gtk_style_properties_unset_property(gtkStyleProperties, Str.toStringz(property), state);
	}
}
