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
 * inFile  = 
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
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ListG
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gda.DataSourceInfo;

public  import gdac.gdatypes;

private import gdac.gda;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.ListG;
private import glib.Str;




/**
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
	
	/** */
	this (ListG glist) {
		this.gdaDataSourceInfo = cast(GdaDataSourceInfo *) glist.data;
	}
	/** */
	string name() { return Str.toString(this.gdaDataSourceInfo.name); }
	/** */
	string provider() { return Str.toString(this.gdaDataSourceInfo.provider); }
	/** */
	string cncString() { return Str.toString(this.gdaDataSourceInfo.cncString); }
	/** */
	string description() { return Str.toString(this.gdaDataSourceInfo.description); }
	/** */
	string username() { return Str.toString(this.gdaDataSourceInfo.username); }
	/** */
	string password() { return Str.toString(this.gdaDataSourceInfo.password); }
	
	
	/**
	 */
	
	/**
	 * Returns:
	 */
	public static GType infoGetType()
	{
		// GType gda_data_source_info_get_type (void);
		return gda_data_source_info_get_type();
	}
}
