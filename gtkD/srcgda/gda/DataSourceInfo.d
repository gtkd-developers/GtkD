/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = libgda-gda-config.html
 * outPack = gda
 * outFile = DataSourceInfo
 * strct   = GdaDataSourceInfo
 * realStrct=
 * ctorStrct=
 * clss    = DataSourceInfo
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gda_data_source_
 * omit structs:
 * 	- GdaProviderInfo
 * omit prefixes:
 * 	- gda_config_
 * 	- gda_provider_
 * omit code:
 * 	- GdaConfigListenerFunc
 * imports:
 * 	- glib.ListG
 * 	- std.string
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gda.DataSourceInfo;

private import gdac.gdatypes;

private import gdac.gda;


private import glib.ListG;


version(tango) {
	private import tango.text.Util;
} else {
	private import std.string;
}




/**
 * Description
 *  The functions in this section allow applications an easy access to the libgda
 *  configuration, thus making them able to access the list of data sources
 *  configured in the system, for instance.
 */
public class DataSourceInfo
{
	
	/** the main Gtk struct */
	protected GdaDataSourceInfo* gdaDataSourceInfo;
	
	
	public GdaDataSourceInfo* getDataSourceInfoStruct()
	{
		return gdaDataSourceInfo;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdaDataSourceInfo;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdaDataSourceInfo* gdaDataSourceInfo)
	{
		this.gdaDataSourceInfo = gdaDataSourceInfo;
	}
	
	this (ListG glist) {
		this.gdaDataSourceInfo = cast(GdaDataSourceInfo *) glist.data;
	}
char[] name() { return std.string.toString(this.gdaDataSourceInfo.name); }
char[] provider() { return std.string.toString(this.gdaDataSourceInfo.provider); }
char[] cncString() { return std.string.toString(this.gdaDataSourceInfo.cncString); }
char[] description() { return std.string.toString(this.gdaDataSourceInfo.description); }
char[] username() { return std.string.toString(this.gdaDataSourceInfo.username); }
char[] password() { return std.string.toString(this.gdaDataSourceInfo.password); }


/**
 */































/**
 * Returns :
 */
public static GType infoGetType()
{
	// GType gda_data_source_info_get_type (void);
	return gda_data_source_info_get_type();
}













}
