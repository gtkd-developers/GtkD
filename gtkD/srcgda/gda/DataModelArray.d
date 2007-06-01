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
 * inFile  = libgda-GdaDataModelArray.html
 * outPack = gda
 * outFile = DataModelArray
 * strct   = GdaDataModelArray
 * realStrct=
 * ctorStrct=
 * clss    = DataModelArray
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gda_data_model_array_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gda.DataModel
 * structWrap:
 * 	- GdaDataModel* -> DataModel
 * module aliases:
 * local aliases:
 */

module gda.DataModelArray;

private import gdac.gdatypes;

private import gdac.gda;


private import gda.DataModel;




/**
 * Description
 */
public class DataModelArray
{
	
	/** the main Gtk struct */
	protected GdaDataModelArray* gdaDataModelArray;
	
	
	public GdaDataModelArray* getDataModelArrayStruct()
	{
		return gdaDataModelArray;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdaDataModelArray;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdaDataModelArray* gdaDataModelArray)
	{
		assert(gdaDataModelArray !is null, "struct gdaDataModelArray is null on constructor");
		this.gdaDataModelArray = gdaDataModelArray;
	}
	
	/**
	 */
	
	
	/**
	 * cols :
	 *  number of columns for rows in this data model.
	 * Returns :
	 *  a pointer to the newly created GdaDataModel.
	 */
	public static DataModel newDataModelArray(int cols)
	{
		// GdaDataModel* gda_data_model_array_new (gint cols);
		return new DataModel( gda_data_model_array_new(cols) );
	}
	
	/**
	 * Sets the number of columns for rows inserted in this model.
	 * cols must be greated than or equal to 0.
	 * model :
	 *  the GdaDataModelArray.
	 * cols :
	 *  number of columns for rows this data model should use.
	 */
	public void setNColumns(int cols)
	{
		// void gda_data_model_array_set_n_columns (GdaDataModelArray *model,  gint cols);
		gda_data_model_array_set_n_columns(gdaDataModelArray, cols);
	}
	
	/**
	 * Frees all the rows inserted in model.
	 * model :
	 *  the model to clear.
	 */
	public void clear()
	{
		// void gda_data_model_array_clear (GdaDataModelArray *model);
		gda_data_model_array_clear(gdaDataModelArray);
	}
}
