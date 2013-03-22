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
 * inFile  = libgda-GdaDataModelArray.html
 * outPack = gda
 * outFile = DataModelArray
 * strct   = GdaDataModelArray
 * realStrct=
 * ctorStrct=GdaDataModel
 * clss    = DataModelArray
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GdaDataModel
 * implements:
 * prefixes:
 * 	- gda_data_model_array_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gda.DataModelArray;

public  import gdac.gdatypes;

private import gdac.gda;
private import glib.ConstructionException;
private import gobject.ObjectG;





private import gda.DataModel;

/**
 */
public class DataModelArray : DataModel
{
	
	/** the main Gtk struct */
	protected GdaDataModelArray* gdaDataModelArray;
	
	
	public GdaDataModelArray* getDataModelArrayStruct()
	{
		return gdaDataModelArray;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdaDataModelArray;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdaDataModelArray* gdaDataModelArray)
	{
		super(cast(GdaDataModel*)gdaDataModelArray);
		this.gdaDataModelArray = gdaDataModelArray;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gdaDataModelArray = cast(GdaDataModelArray*)obj;
	}
	
	/**
	 */
	
	/**
	 * Params:
	 * cols = number of columns for rows in this data model.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (int cols)
	{
		// GdaDataModel* gda_data_model_array_new (gint cols);
		auto p = gda_data_model_array_new(cols);
		if(p is null)
		{
			throw new ConstructionException("null returned by gda_data_model_array_new(cols)");
		}
		this(cast(GdaDataModelArray*) p);
	}
	
	/**
	 * Sets the number of columns for rows inserted in this model.
	 * cols must be greated than or equal to 0.
	 * Params:
	 * cols = number of columns for rows this data model should use.
	 */
	public void setNColumns(int cols)
	{
		// void gda_data_model_array_set_n_columns (GdaDataModelArray *model,  gint cols);
		gda_data_model_array_set_n_columns(gdaDataModelArray, cols);
	}
	
	/**
	 * Frees all the rows inserted in model.
	 */
	public void clear()
	{
		// void gda_data_model_array_clear (GdaDataModelArray *model);
		gda_data_model_array_clear(gdaDataModelArray);
	}
}
