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


module gtk.RcProperty;

private import glib.MemorySlice;
private import glib.Str;
private import glib.StringG;
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gobject.Value;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import gtkd.Loader;


/**
 * Deprecated
 */
public struct RcProperty
{

	/**
	 * A #GtkRcPropertyParser for use with gtk_settings_install_property_parser()
	 * or gtk_widget_class_install_style_property_parser() which parses
	 * borders in the form
	 * `"{ left, right, top, bottom }"` for integers
	 * left, right, top and bottom.
	 *
	 * Params:
	 *     pspec = a #GParamSpec
	 *     gstring = the #GString to be parsed
	 *     propertyValue = a #GValue which must hold boxed values.
	 *
	 * Returns: %TRUE if @gstring could be parsed and @property_value
	 *     has been set to the resulting #GtkBorder.
	 */
	public static bool parseBorder(ParamSpec pspec, StringG gstring, Value propertyValue)
	{
		return gtk_rc_property_parse_border((pspec is null) ? null : pspec.getParamSpecStruct(), (gstring is null) ? null : gstring.getStringGStruct(), (propertyValue is null) ? null : propertyValue.getValueStruct()) != 0;
	}

	/**
	 * A #GtkRcPropertyParser for use with gtk_settings_install_property_parser()
	 * or gtk_widget_class_install_style_property_parser() which parses a
	 * color given either by its name or in the form
	 * `{ red, green, blue }` where red, green and
	 * blue are integers between 0 and 65535 or floating-point numbers
	 * between 0 and 1.
	 *
	 * Params:
	 *     pspec = a #GParamSpec
	 *     gstring = the #GString to be parsed
	 *     propertyValue = a #GValue which must hold #GdkColor values.
	 *
	 * Returns: %TRUE if @gstring could be parsed and @property_value
	 *     has been set to the resulting #GdkColor.
	 */
	public static bool parseColor(ParamSpec pspec, StringG gstring, Value propertyValue)
	{
		return gtk_rc_property_parse_color((pspec is null) ? null : pspec.getParamSpecStruct(), (gstring is null) ? null : gstring.getStringGStruct(), (propertyValue is null) ? null : propertyValue.getValueStruct()) != 0;
	}

	/**
	 * A #GtkRcPropertyParser for use with gtk_settings_install_property_parser()
	 * or gtk_widget_class_install_style_property_parser() which parses a single
	 * enumeration value.
	 *
	 * The enumeration value can be specified by its name, its nickname or
	 * its numeric value. For consistency with flags parsing, the value
	 * may be surrounded by parentheses.
	 *
	 * Params:
	 *     pspec = a #GParamSpec
	 *     gstring = the #GString to be parsed
	 *     propertyValue = a #GValue which must hold enum values.
	 *
	 * Returns: %TRUE if @gstring could be parsed and @property_value
	 *     has been set to the resulting #GEnumValue.
	 */
	public static bool parseEnum(ParamSpec pspec, StringG gstring, Value propertyValue)
	{
		return gtk_rc_property_parse_enum((pspec is null) ? null : pspec.getParamSpecStruct(), (gstring is null) ? null : gstring.getStringGStruct(), (propertyValue is null) ? null : propertyValue.getValueStruct()) != 0;
	}

	/**
	 * A #GtkRcPropertyParser for use with gtk_settings_install_property_parser()
	 * or gtk_widget_class_install_style_property_parser() which parses flags.
	 *
	 * Flags can be specified by their name, their nickname or
	 * numerically. Multiple flags can be specified in the form
	 * `"( flag1 | flag2 | ... )"`.
	 *
	 * Params:
	 *     pspec = a #GParamSpec
	 *     gstring = the #GString to be parsed
	 *     propertyValue = a #GValue which must hold flags values.
	 *
	 * Returns: %TRUE if @gstring could be parsed and @property_value
	 *     has been set to the resulting flags value.
	 */
	public static bool parseFlags(ParamSpec pspec, StringG gstring, Value propertyValue)
	{
		return gtk_rc_property_parse_flags((pspec is null) ? null : pspec.getParamSpecStruct(), (gstring is null) ? null : gstring.getStringGStruct(), (propertyValue is null) ? null : propertyValue.getValueStruct()) != 0;
	}

	/**
	 * A #GtkRcPropertyParser for use with gtk_settings_install_property_parser()
	 * or gtk_widget_class_install_style_property_parser() which parses a
	 * requisition in the form
	 * `"{ width, height }"` for integers %width and %height.
	 *
	 * Params:
	 *     pspec = a #GParamSpec
	 *     gstring = the #GString to be parsed
	 *     propertyValue = a #GValue which must hold boxed values.
	 *
	 * Returns: %TRUE if @gstring could be parsed and @property_value
	 *     has been set to the resulting #GtkRequisition.
	 */
	public static bool parseRequisition(ParamSpec pspec, StringG gstring, Value propertyValue)
	{
		return gtk_rc_property_parse_requisition((pspec is null) ? null : pspec.getParamSpecStruct(), (gstring is null) ? null : gstring.getStringGStruct(), (propertyValue is null) ? null : propertyValue.getValueStruct()) != 0;
	}
}
