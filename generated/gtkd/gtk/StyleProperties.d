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


module gtk.StyleProperties;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gobject.Value;
private import gtk.StyleProviderIF;
private import gtk.StyleProviderT;
private import gtk.SymbolicColor;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * GtkStyleProperties provides the storage for style information
 * that is used by #GtkStyleContext and other #GtkStyleProvider
 * implementations.
 * 
 * Before style properties can be stored in GtkStyleProperties, they
 * must be registered with gtk_style_properties_register_property().
 * 
 * Unless you are writing a #GtkStyleProvider implementation, you
 * are unlikely to use this API directly, as gtk_style_context_get()
 * and its variants are the preferred way to access styling information
 * from widget implementations and theming engine implementations
 * should use the APIs provided by #GtkThemingEngine instead.
 * 
 * #GtkStyleProperties has been deprecated in GTK 3.16. The CSS
 * machinery does not use it anymore and all users of this object
 * have been deprecated.
 */
public class StyleProperties : ObjectG, StyleProviderIF
{
	/** the main Gtk struct */
	protected GtkStyleProperties* gtkStyleProperties;

	/** Get the main Gtk struct */
	public GtkStyleProperties* getStylePropertiesStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkStyleProperties;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkStyleProperties;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkStyleProperties* gtkStyleProperties, bool ownedRef = false)
	{
		this.gtkStyleProperties = gtkStyleProperties;
		super(cast(GObject*)gtkStyleProperties, ownedRef);
	}

	// add the StyleProvider capabilities
	mixin StyleProviderT!(GtkStyleProperties);


	/** */
	public static GType getType()
	{
		return gtk_style_properties_get_type();
	}

	/**
	 * Returns a newly created #GtkStyleProperties
	 *
	 * Deprecated: #GtkStyleProperties are deprecated.
	 *
	 * Returns: a new #GtkStyleProperties
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_style_properties_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkStyleProperties*) p, true);
	}

	/**
	 * Returns %TRUE if a property has been registered, if @pspec or
	 * @parse_func are not %NULL, the #GParamSpec and parsing function
	 * will be respectively returned.
	 *
	 * Deprecated: This code could only look up custom properties and
	 * those are deprecated.
	 *
	 * Params:
	 *     propertyName = property name to look up
	 *     parseFunc = return location for the parse function
	 *     pspec = return location for the #GParamSpec
	 *
	 * Returns: %TRUE if the property is registered, %FALSE otherwise
	 *
	 * Since: 3.0
	 */
	public static bool lookupProperty(string propertyName, out GtkStylePropertyParser parseFunc, out ParamSpec pspec)
	{
		GParamSpec* outpspec = null;

		auto p = gtk_style_properties_lookup_property(Str.toStringz(propertyName), &parseFunc, &outpspec) != 0;

		pspec = ObjectG.getDObject!(ParamSpec)(outpspec);

		return p;
	}

	/**
	 * Registers a property so it can be used in the CSS file format.
	 * This function is the low-level equivalent of
	 * gtk_theming_engine_register_property(), if you are implementing
	 * a theming engine, you want to use that function instead.
	 *
	 * Deprecated: Code should use the default properties provided by CSS.
	 *
	 * Params:
	 *     parseFunc = parsing function to use, or %NULL
	 *     pspec = the #GParamSpec for the new property
	 *
	 * Since: 3.0
	 */
	public static void registerProperty(GtkStylePropertyParser parseFunc, ParamSpec pspec)
	{
		gtk_style_properties_register_property(parseFunc, (pspec is null) ? null : pspec.getParamSpecStruct());
	}

	/**
	 * Clears all style information from @props.
	 *
	 * Deprecated: #GtkStyleProperties are deprecated.
	 */
	public void clear()
	{
		gtk_style_properties_clear(gtkStyleProperties);
	}

	/**
	 * Gets a style property from @props for the given state. When done with @value,
	 * g_value_unset() needs to be called to free any allocated memory.
	 *
	 * Deprecated: #GtkStyleProperties are deprecated.
	 *
	 * Params:
	 *     property = style property name
	 *     state = state to retrieve the property value for
	 *     value = return location for the style property value.
	 *
	 * Returns: %TRUE if the property exists in @props, %FALSE otherwise
	 *
	 * Since: 3.0
	 */
	public bool getStyleProperty(string property, GtkStateFlags state, out Value value)
	{
		GValue* outvalue = sliceNew!GValue();

		auto p = gtk_style_properties_get_property(gtkStyleProperties, Str.toStringz(property), state, outvalue) != 0;

		value = ObjectG.getDObject!(Value)(outvalue, true);

		return p;
	}

	/**
	 * Retrieves several style property values from @props for a given state.
	 *
	 * Deprecated: #GtkStyleProperties are deprecated.
	 *
	 * Params:
	 *     state = state to retrieve the property values for
	 *     args = va_list of property name/return location pairs, followed by %NULL
	 *
	 * Since: 3.0
	 */
	public void getStyleValist(GtkStateFlags state, void* args)
	{
		gtk_style_properties_get_valist(gtkStyleProperties, state, args);
	}

	/**
	 * Returns the symbolic color that is mapped
	 * to @name.
	 *
	 * Deprecated: #GtkSymbolicColor is deprecated.
	 *
	 * Params:
	 *     name = color name to lookup
	 *
	 * Returns: The mapped color
	 *
	 * Since: 3.0
	 */
	public SymbolicColor lookupColor(string name)
	{
		auto p = gtk_style_properties_lookup_color(gtkStyleProperties, Str.toStringz(name));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SymbolicColor)(cast(GtkSymbolicColor*) p);
	}

	/**
	 * Maps @color so it can be referenced by @name. See
	 * gtk_style_properties_lookup_color()
	 *
	 * Deprecated: #GtkSymbolicColor is deprecated.
	 *
	 * Params:
	 *     name = color name
	 *     color = #GtkSymbolicColor to map @name to
	 *
	 * Since: 3.0
	 */
	public void mapColor(string name, SymbolicColor color)
	{
		gtk_style_properties_map_color(gtkStyleProperties, Str.toStringz(name), (color is null) ? null : color.getSymbolicColorStruct());
	}

	/**
	 * Merges into @props all the style information contained
	 * in @props_to_merge. If @replace is %TRUE, the values
	 * will be overwritten, if it is %FALSE, the older values
	 * will prevail.
	 *
	 * Deprecated: #GtkStyleProperties are deprecated.
	 *
	 * Params:
	 *     propsToMerge = a second #GtkStyleProperties
	 *     replace = whether to replace values or not
	 *
	 * Since: 3.0
	 */
	public void merge(StyleProperties propsToMerge, bool replace)
	{
		gtk_style_properties_merge(gtkStyleProperties, (propsToMerge is null) ? null : propsToMerge.getStylePropertiesStruct(), replace);
	}

	/**
	 * Sets a styling property in @props.
	 *
	 * Deprecated: #GtkStyleProperties are deprecated.
	 *
	 * Params:
	 *     property = styling property to set
	 *     state = state to set the value for
	 *     value = new value for the property
	 *
	 * Since: 3.0
	 */
	public void setStyleProperty(string property, GtkStateFlags state, Value value)
	{
		gtk_style_properties_set_property(gtkStyleProperties, Str.toStringz(property), state, (value is null) ? null : value.getValueStruct());
	}

	/**
	 * Sets several style properties on @props.
	 *
	 * Deprecated: #GtkStyleProperties are deprecated.
	 *
	 * Params:
	 *     state = state to set the values for
	 *     args = va_list of property name/value pairs, followed by %NULL
	 *
	 * Since: 3.0
	 */
	public void setStyleValist(GtkStateFlags state, void* args)
	{
		gtk_style_properties_set_valist(gtkStyleProperties, state, args);
	}

	/**
	 * Unsets a style property in @props.
	 *
	 * Deprecated: #GtkStyleProperties are deprecated.
	 *
	 * Params:
	 *     property = property to unset
	 *     state = state to unset
	 *
	 * Since: 3.0
	 */
	public void unsetProperty(string property, GtkStateFlags state)
	{
		gtk_style_properties_unset_property(gtkStyleProperties, Str.toStringz(property), state);
	}
}
