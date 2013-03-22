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
 * inFile  = GtkSettings.html
 * outPack = gtk
 * outFile = Settings
 * strct   = GtkSettings
 * realStrct=
 * ctorStrct=
 * clss    = Settings
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- StyleProviderIF
 * prefixes:
 * 	- gtk_settings_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gobject.ParamSpec
 * 	- gobject.Value
 * 	- glib.StringG
 * 	- gdk.Screen
 * 	- gtk.StyleProviderT
 * 	- gtk.StyleProviderIF
 * structWrap:
 * 	- GParamSpec* -> ParamSpec
 * 	- GString* -> StringG
 * 	- GValue* -> Value
 * 	- GdkScreen* -> Screen
 * 	- GtkSettings* -> Settings
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Settings;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gobject.ParamSpec;
private import gobject.Value;
private import glib.StringG;
private import gdk.Screen;
private import gtk.StyleProviderT;
private import gtk.StyleProviderIF;



private import gobject.ObjectG;

/**
 * GtkSettings provide a mechanism to share global settings between
 * applications.
 *
 * On the X window system, this sharing is realized by an
 * XSettings
 * manager that is usually part of the desktop environment, along with
 * utilities that let the user change these settings. In the absence of
 * an Xsettings manager, GTK+ reads default values for settings from
 * settings.ini files in
 * /etc/gtk-3.0, $XDG_CONFIG_DIRS/gtk-3.0
 * and $XDG_CONFIG_HOME/gtk-3.0.
 * These files must be valid key files (see GKeyFile), and have
 * a section called Settings. Themes can also provide default values
 * for settings by installing a settings.ini file
 * next to their gtk.css file.
 *
 * Applications can override system-wide settings with
 * gtk_settings_set_string_property(), gtk_settings_set_long_property(),
 * etc. This should be restricted to special cases though; GtkSettings are
 * not meant as an application configuration facility. When doing so, you
 * need to be aware that settings that are specific to individual widgets
 * may not be available before the widget type has been realized at least
 * once. The following example demonstrates a way to do this:
 *
 * $(DDOC_COMMENT example)
 *
 * There is one GtkSettings instance per screen. It can be obtained with
 * gtk_settings_get_for_screen(), but in many cases, it is more convenient
 * to use gtk_widget_get_settings(). gtk_settings_get_default() returns the
 * GtkSettings instance for the default screen.
 */
public class Settings : ObjectG, StyleProviderIF
{
	
	/** the main Gtk struct */
	protected GtkSettings* gtkSettings;
	
	
	public GtkSettings* getSettingsStruct()
	{
		return gtkSettings;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
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
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSettings = cast(GtkSettings*)obj;
	}
	
	// add the StyleProvider capabilities
	mixin StyleProviderT!(GtkSettings);
	
	/**
	 */
	
	/**
	 * Gets the GtkSettings object for the default GDK screen, creating
	 * it if necessary. See gtk_settings_get_for_screen().
	 * Returns: a GtkSettings object. If there is no default screen, then returns NULL. [transfer none]
	 */
	public static Settings getDefault()
	{
		// GtkSettings * gtk_settings_get_default (void);
		auto p = gtk_settings_get_default();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Settings)(cast(GtkSettings*) p);
	}
	
	/**
	 * Gets the GtkSettings object for screen, creating it if necessary.
	 * Since 2.2
	 * Params:
	 * screen = a GdkScreen.
	 * Returns: a GtkSettings object. [transfer none]
	 */
	public static Settings getForScreen(Screen screen)
	{
		// GtkSettings * gtk_settings_get_for_screen (GdkScreen *screen);
		auto p = gtk_settings_get_for_screen((screen is null) ? null : screen.getScreenStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Settings)(cast(GtkSettings*) p);
	}
	
	/**
	 */
	public static void installProperty(ParamSpec pspec)
	{
		// void gtk_settings_install_property (GParamSpec *pspec);
		gtk_settings_install_property((pspec is null) ? null : pspec.getParamSpecStruct());
	}
	
	/**
	 * Params:
	 * parser = . [scope call]
	 */
	public static void installPropertyParser(ParamSpec pspec, GtkRcPropertyParser parser)
	{
		// void gtk_settings_install_property_parser  (GParamSpec *pspec,  GtkRcPropertyParser parser);
		gtk_settings_install_property_parser((pspec is null) ? null : pspec.getParamSpecStruct(), parser);
	}
	
	/**
	 * A GtkRcPropertyParser for use with gtk_settings_install_property_parser()
	 * or gtk_widget_class_install_style_property_parser() which parses a
	 * color given either by its name or in the form
	 * { red, green, blue } where red, green and
	 * blue are integers between 0 and 65535 or floating-point numbers
	 * between 0 and 1.
	 * Params:
	 * pspec = a GParamSpec
	 * gstring = the GString to be parsed
	 * propertyValue = a GValue which must hold GdkColor values.
	 * Returns: TRUE if gstring could be parsed and property_value has been set to the resulting GdkColor.
	 */
	public static int rcPropertyParseColor(ParamSpec pspec, StringG gstring, Value propertyValue)
	{
		// gboolean gtk_rc_property_parse_color (const GParamSpec *pspec,  const GString *gstring,  GValue *property_value);
		return gtk_rc_property_parse_color((pspec is null) ? null : pspec.getParamSpecStruct(), (gstring is null) ? null : gstring.getStringGStruct(), (propertyValue is null) ? null : propertyValue.getValueStruct());
	}
	
	/**
	 * A GtkRcPropertyParser for use with gtk_settings_install_property_parser()
	 * or gtk_widget_class_install_style_property_parser() which parses a single
	 * enumeration value.
	 * The enumeration value can be specified by its name, its nickname or
	 * its numeric value. For consistency with flags parsing, the value
	 * may be surrounded by parentheses.
	 * Params:
	 * pspec = a GParamSpec
	 * gstring = the GString to be parsed
	 * propertyValue = a GValue which must hold enum values.
	 * Returns: TRUE if gstring could be parsed and property_value has been set to the resulting GEnumValue.
	 */
	public static int rcPropertyParseEnum(ParamSpec pspec, StringG gstring, Value propertyValue)
	{
		// gboolean gtk_rc_property_parse_enum (const GParamSpec *pspec,  const GString *gstring,  GValue *property_value);
		return gtk_rc_property_parse_enum((pspec is null) ? null : pspec.getParamSpecStruct(), (gstring is null) ? null : gstring.getStringGStruct(), (propertyValue is null) ? null : propertyValue.getValueStruct());
	}
	
	/**
	 * A GtkRcPropertyParser for use with gtk_settings_install_property_parser()
	 * or gtk_widget_class_install_style_property_parser() which parses flags.
	 * Flags can be specified by their name, their nickname or
	 * numerically. Multiple flags can be specified in the form
	 * "( flag1 | flag2 | ... )".
	 * Params:
	 * pspec = a GParamSpec
	 * gstring = the GString to be parsed
	 * propertyValue = a GValue which must hold flags values.
	 * Returns: TRUE if gstring could be parsed and property_value has been set to the resulting flags value.
	 */
	public static int rcPropertyParseFlags(ParamSpec pspec, StringG gstring, Value propertyValue)
	{
		// gboolean gtk_rc_property_parse_flags (const GParamSpec *pspec,  const GString *gstring,  GValue *property_value);
		return gtk_rc_property_parse_flags((pspec is null) ? null : pspec.getParamSpecStruct(), (gstring is null) ? null : gstring.getStringGStruct(), (propertyValue is null) ? null : propertyValue.getValueStruct());
	}
	
	/**
	 * A GtkRcPropertyParser for use with gtk_settings_install_property_parser()
	 * or gtk_widget_class_install_style_property_parser() which parses a
	 * requisition in the form
	 * "{ width, height }" for integers width and height.
	 * Params:
	 * pspec = a GParamSpec
	 * gstring = the GString to be parsed
	 * propertyValue = a GValue which must hold boxed values.
	 * Returns: TRUE if gstring could be parsed and property_value has been set to the resulting GtkRequisition.
	 */
	public static int rcPropertyParseRequisition(ParamSpec pspec, StringG gstring, Value propertyValue)
	{
		// gboolean gtk_rc_property_parse_requisition (const GParamSpec *pspec,  const GString *gstring,  GValue *property_value);
		return gtk_rc_property_parse_requisition((pspec is null) ? null : pspec.getParamSpecStruct(), (gstring is null) ? null : gstring.getStringGStruct(), (propertyValue is null) ? null : propertyValue.getValueStruct());
	}
	
	/**
	 * A GtkRcPropertyParser for use with gtk_settings_install_property_parser()
	 * or gtk_widget_class_install_style_property_parser() which parses
	 * borders in the form
	 * "{ left, right, top, bottom }" for integers
	 * left, right, top and bottom.
	 * Params:
	 * pspec = a GParamSpec
	 * gstring = the GString to be parsed
	 * propertyValue = a GValue which must hold boxed values.
	 * Returns: TRUE if gstring could be parsed and property_value has been set to the resulting GtkBorder.
	 */
	public static int rcPropertyParseBorder(ParamSpec pspec, StringG gstring, Value propertyValue)
	{
		// gboolean gtk_rc_property_parse_border (const GParamSpec *pspec,  const GString *gstring,  GValue *property_value);
		return gtk_rc_property_parse_border((pspec is null) ? null : pspec.getParamSpecStruct(), (gstring is null) ? null : gstring.getStringGStruct(), (propertyValue is null) ? null : propertyValue.getValueStruct());
	}
	
	/**
	 */
	public void setPropertyValue(string name, out GtkSettingsValue svalue)
	{
		// void gtk_settings_set_property_value (GtkSettings *settings,  const gchar *name,  const GtkSettingsValue *svalue);
		gtk_settings_set_property_value(gtkSettings, Str.toStringz(name), &svalue);
	}
	
	/**
	 */
	public void setStringProperty(string name, string vString, string origin)
	{
		// void gtk_settings_set_string_property (GtkSettings *settings,  const gchar *name,  const gchar *v_string,  const gchar *origin);
		gtk_settings_set_string_property(gtkSettings, Str.toStringz(name), Str.toStringz(vString), Str.toStringz(origin));
	}
	
	/**
	 */
	public void setLongProperty(string name, glong vLong, string origin)
	{
		// void gtk_settings_set_long_property (GtkSettings *settings,  const gchar *name,  glong v_long,  const gchar *origin);
		gtk_settings_set_long_property(gtkSettings, Str.toStringz(name), vLong, Str.toStringz(origin));
	}
	
	/**
	 */
	public void setDoubleProperty(string name, double vDouble, string origin)
	{
		// void gtk_settings_set_double_property (GtkSettings *settings,  const gchar *name,  gdouble v_double,  const gchar *origin);
		gtk_settings_set_double_property(gtkSettings, Str.toStringz(name), vDouble, Str.toStringz(origin));
	}
}
