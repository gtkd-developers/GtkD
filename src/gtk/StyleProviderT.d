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
 * inFile  = GtkStyleProvider.html
 * outPack = gtk
 * outFile = StyleProviderT
 * strct   = GtkStyleProvider
 * realStrct=
 * ctorStrct=
 * clss    = StyleProviderT
 * interf  = StyleProviderIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_style_provider_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gobject.ParamSpec
 * 	- gobject.Value
 * 	- gtk.IconFactory
 * 	- gtk.StyleProperties
 * 	- gtk.WidgetPath
 * structWrap:
 * 	- GParamSpec* -> ParamSpec
 * 	- GValue* -> Value
 * 	- GtkIconFactory* -> IconFactory
 * 	- GtkStyleProperties* -> StyleProperties
 * 	- GtkWidgetPath* -> WidgetPath
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.StyleProviderT;

public  import gtkc.gtktypes;

public import gtkc.gtk;
public import glib.ConstructionException;
public import gobject.ObjectG;


public import gobject.ParamSpec;
public import gobject.Value;
public import gtk.IconFactory;
public import gtk.StyleProperties;
public import gtk.WidgetPath;




/**
 * Description
 * GtkStyleProvider is an interface used to provide style information to a GtkStyleContext.
 * See gtk_style_context_add_provider() and gtk_style_context_add_provider_for_screen().
 */
public template StyleProviderT(TStruct)
{
	
	/** the main Gtk struct */
	protected GtkStyleProvider* gtkStyleProvider;
	
	
	public GtkStyleProvider* getStyleProviderTStruct()
	{
		return cast(GtkStyleProvider*)getStruct();
	}
	
	
	/**
	 */
	
	/**
	 * Returns the GtkIconFactory defined to be in use for path, or NULL if none
	 * is defined.
	 * Params:
	 * path = GtkWidgetPath to query
	 * Returns: The icon factory to use for path, or NULL. [transfer none] Since 3.0
	 */
	public IconFactory getIconFactory(WidgetPath path)
	{
		// GtkIconFactory * gtk_style_provider_get_icon_factory (GtkStyleProvider *provider,  GtkWidgetPath *path);
		auto p = gtk_style_provider_get_icon_factory(getStyleProviderTStruct(), (path is null) ? null : path.getWidgetPathStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(IconFactory)(cast(GtkIconFactory*) p);
	}
	
	/**
	 * Returns the style settings affecting a widget defined by path, or NULL if
	 * provider doesn't contemplate styling path.
	 * Params:
	 * path = GtkWidgetPath to query
	 * Returns: a GtkStyleProperties containing the style settings affecting path. [transfer full] Since 3.0
	 */
	public StyleProperties getStyle(WidgetPath path)
	{
		// GtkStyleProperties * gtk_style_provider_get_style (GtkStyleProvider *provider,  GtkWidgetPath *path);
		auto p = gtk_style_provider_get_style(getStyleProviderTStruct(), (path is null) ? null : path.getWidgetPathStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(StyleProperties)(cast(GtkStyleProperties*) p);
	}
	
	/**
	 * Looks up a widget style property as defined by provider for
	 * the widget represented by path.
	 * Params:
	 * path = GtkWidgetPath to query
	 * state = state to query the style property for
	 * pspec = The GParamSpec to query
	 * value = return location for the property value. [out]
	 * Returns: TRUE if the property was found and has a value, FALSE otherwise Since 3.0
	 */
	public int getStyleProperty(WidgetPath path, GtkStateFlags state, ParamSpec pspec, Value value)
	{
		// gboolean gtk_style_provider_get_style_property  (GtkStyleProvider *provider,  GtkWidgetPath *path,  GtkStateFlags state,  GParamSpec *pspec,  GValue *value);
		return gtk_style_provider_get_style_property(getStyleProviderTStruct(), (path is null) ? null : path.getWidgetPathStruct(), state, (pspec is null) ? null : pspec.getParamSpecStruct(), (value is null) ? null : value.getValueStruct());
	}
}
