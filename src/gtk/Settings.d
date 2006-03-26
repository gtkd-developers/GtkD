/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = Settings
 * strct   = GtkSettings
 * realStrct=
 * clss    = Settings
 * interf  = 
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_settings_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gtk.Settings
 * 	- gdk.Screen
 * 	- glib.StringG
 * 	- gobject.Value
 * structWrap:
 * 	- GString* -> StringG
 * 	- GValue* -> Value
 * 	- GdkScreen* -> Screen
 * 	- GtkSettings* -> Settings
 * local aliases:
 */

module gtk.Settings;

private import gtk.typedefs;

private import lib.gtk;

private import glib.Str;
private import gtk.Settings;
private import gdk.Screen;
private import glib.StringG;
private import gobject.Value;

/**
 * Description
 */
private import gobject.ObjectG;
public class Settings : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkSettings* gtkSettings;
	
	
	public GtkSettings* getSettingsStruct()
	{
		return gtkSettings;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkSettings;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSettings* gtkSettings)
	{
		super(cast(GObject*)gtkSettings);
		this.gtkSettings = gtkSettings;
	}
	
	/**
	 */
	
	
	
	/**
	 * Gets the GtkSettings object for the default GDK screen, creating
	 * it if necessary. See gtk_settings_get_for_screen().
	 * Returns:
	 *  a GtkSettings object. If there is no default
	 *  screen, then returns NULL.
	 */
	public static Settings getDefault()
	{
		// GtkSettings* gtk_settings_get_default (void);
		return new Settings( gtk_settings_get_default() );
	}
	
	/**
	 * Gets the GtkSettings object for screen, creating it if necessary.
	 * screen:
	 *  a GdkScreen.
	 * Returns:
	 *  a GtkSettings object.
	 * Since 2.2
	 */
	public static Settings getForScreen(Screen screen)
	{
		// GtkSettings* gtk_settings_get_for_screen (GdkScreen *screen);
		return new Settings( gtk_settings_get_for_screen((screen is null) ? null : screen.getScreenStruct()) );
	}
	
	/**
	 * pspec:
	 */
	public static void installProperty(GParamSpec* pspec)
	{
		// void gtk_settings_install_property (GParamSpec *pspec);
		gtk_settings_install_property(pspec);
	}
	
	/**
	 * pspec:
	 * parser:
	 */
	public static void installPropertyParser(GParamSpec* pspec, GtkRcPropertyParser parser)
	{
		// void gtk_settings_install_property_parser  (GParamSpec *pspec,  GtkRcPropertyParser parser);
		gtk_settings_install_property_parser(pspec, parser);
	}
	
	/**
	 * A GtkRcPropertyParser for use with gtk_settings_install_property_parser()
	 * or gtk_widget_class_install_style_property_parser() which parses a
	 * color given either by its name or in the form
	 * { red, green, blue } where red, green and
	 * blue are integers between 0 and 65535 or floating-point numbers
	 * between 0 and 1.
	 * pspec:
	 *  a GParamSpec
	 * gstring:
	 *  the GString to be parsed
	 * property_value:
	 *  a GValue which must hold GdkColor values.
	 * Returns:
	 *  TRUE if gstring could be parsed and property_value
	 * has been set to the resulting GdkColor.
	 */
	public static int rcPropertyParseColor(GParamSpec* pspec, StringG gstring, Value propertyValue)
	{
		// gboolean gtk_rc_property_parse_color (const GParamSpec *pspec,  const GString *gstring,  GValue *property_value);
		return gtk_rc_property_parse_color(pspec, (gstring is null) ? null : gstring.getStringGStruct(), (propertyValue is null) ? null : propertyValue.getValueStruct());
	}
	
	/**
	 * A GtkRcPropertyParser for use with gtk_settings_install_property_parser()
	 * or gtk_widget_class_install_style_property_parser() which parses a single
	 * enumeration value.
	 * The enumeration value can be specified by its name, its nickname or
	 * its numeric value. For consistency with flags parsing, the value
	 * may be surrounded by parentheses.
	 * pspec:
	 *  a GParamSpec
	 * gstring:
	 *  the GString to be parsed
	 * property_value:
	 *  a GValue which must hold enum values.
	 * Returns:
	 *  TRUE if gstring could be parsed and property_value
	 * has been set to the resulting GEnumValue.
	 */
	public static int rcPropertyParseEnum(GParamSpec* pspec, StringG gstring, Value propertyValue)
	{
		// gboolean gtk_rc_property_parse_enum (const GParamSpec *pspec,  const GString *gstring,  GValue *property_value);
		return gtk_rc_property_parse_enum(pspec, (gstring is null) ? null : gstring.getStringGStruct(), (propertyValue is null) ? null : propertyValue.getValueStruct());
	}
	
	/**
	 * A GtkRcPropertyParser for use with gtk_settings_install_property_parser()
	 * or gtk_widget_class_install_style_property_parser() which parses flags.
	 * Flags can be specified by their name, their nickname or
	 * numerically. Multiple flags can be specified in the form
	 * "( flag1 | flag2 | ... )".
	 * pspec:
	 *  a GParamSpec
	 * gstring:
	 *  the GString to be parsed
	 * property_value:
	 *  a GValue which must hold flags values.
	 * Returns:
	 *  TRUE if gstring could be parsed and property_value
	 * has been set to the resulting flags value.
	 */
	public static int rcPropertyParseFlags(GParamSpec* pspec, StringG gstring, Value propertyValue)
	{
		// gboolean gtk_rc_property_parse_flags (const GParamSpec *pspec,  const GString *gstring,  GValue *property_value);
		return gtk_rc_property_parse_flags(pspec, (gstring is null) ? null : gstring.getStringGStruct(), (propertyValue is null) ? null : propertyValue.getValueStruct());
	}
	
	/**
	 * A GtkRcPropertyParser for use with gtk_settings_install_property_parser()
	 * or gtk_widget_class_install_style_property_parser() which parses a
	 * requisition in the form
	 * "{ width, height }" for integers width and height.
	 * pspec:
	 *  a GParamSpec
	 * gstring:
	 *  the GString to be parsed
	 * property_value:
	 *  a GValue which must hold boxed values.
	 * Returns:
	 *  TRUE if gstring could be parsed and property_value
	 * has been set to the resulting GtkRequisition.
	 */
	public static int rcPropertyParseRequisition(GParamSpec* pspec, StringG gstring, Value propertyValue)
	{
		// gboolean gtk_rc_property_parse_requisition  (const GParamSpec *pspec,  const GString *gstring,  GValue *property_value);
		return gtk_rc_property_parse_requisition(pspec, (gstring is null) ? null : gstring.getStringGStruct(), (propertyValue is null) ? null : propertyValue.getValueStruct());
	}
	
	/**
	 * A GtkRcPropertyParser for use with gtk_settings_install_property_parser()
	 * or gtk_widget_class_install_style_property_parser() which parses
	 * borders in the form
	 * "{ left, right, top, bottom }" for integers
	 * left, right, top and bottom.
	 * pspec:
	 *  a GParamSpec
	 * gstring:
	 *  the GString to be parsed
	 * property_value:
	 *  a GValue which must hold boxed values.
	 * Returns:
	 *  TRUE if gstring could be parsed and property_value
	 * has been set to the resulting GtkBorder.
	 */
	public static int rcPropertyParseBorder(GParamSpec* pspec, StringG gstring, Value propertyValue)
	{
		// gboolean gtk_rc_property_parse_border (const GParamSpec *pspec,  const GString *gstring,  GValue *property_value);
		return gtk_rc_property_parse_border(pspec, (gstring is null) ? null : gstring.getStringGStruct(), (propertyValue is null) ? null : propertyValue.getValueStruct());
	}
	
	/**
	 * settings:
	 * name:
	 * svalue:
	 */
	public void setPropertyValue(char[] name, GtkSettingsValue* svalue)
	{
		// void gtk_settings_set_property_value (GtkSettings *settings,  const gchar *name,  const GtkSettingsValue *svalue);
		gtk_settings_set_property_value(gtkSettings, Str.toStringz(name), svalue);
	}
	
	/**
	 * settings:
	 * name:
	 * v_string:
	 * origin:
	 */
	public void setStringProperty(char[] name, char[] vString, char[] origin)
	{
		// void gtk_settings_set_string_property  (GtkSettings *settings,  const gchar *name,  const gchar *v_string,  const gchar *origin);
		gtk_settings_set_string_property(gtkSettings, Str.toStringz(name), Str.toStringz(vString), Str.toStringz(origin));
	}
	
	/**
	 * settings:
	 * name:
	 * v_long:
	 * origin:
	 */
	public void setLongProperty(char[] name, int vLong, char[] origin)
	{
		// void gtk_settings_set_long_property (GtkSettings *settings,  const gchar *name,  glong v_long,  const gchar *origin);
		gtk_settings_set_long_property(gtkSettings, Str.toStringz(name), vLong, Str.toStringz(origin));
	}
	
	/**
	 * settings:
	 * name:
	 * v_double:
	 * origin:
	 * Property Details
	 * The "gtk-alternative-button-order" property
	 *  "gtk-alternative-button-order" gboolean : Read / Write
	 * Whether buttons in dialogs should use the alternative button order.
	 * Default value: FALSE
	 */
	public void setDoubleProperty(char[] name, double vDouble, char[] origin)
	{
		// void gtk_settings_set_double_property  (GtkSettings *settings,  const gchar *name,  gdouble v_double,  const gchar *origin);
		gtk_settings_set_double_property(gtkSettings, Str.toStringz(name), vDouble, Str.toStringz(origin));
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
