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
 * inFile  = libgda-GdaDataModelHash.html
 * outPack = gda
 * outFile = DataModelHash
 * strct   = GdaDataModelHash
 * realStrct=
 * ctorStrct=
 * clss    = DataModelHash
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gda_data_model_hash_
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

module gda.DataModelHash;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gdac.gdatypes;

private import gdac.gda;


private import gda.DataModel;




/**
 * Description
 * Unlike GdaDataModelArray, this data model implementation stores the GdaRow in
 * a hash table. So it only retrieves from the database backend exactly the
 * requested rows (while in GdaDataModelArray you have to retrieve all the rows
 * until the one requested).
 */
public class DataModelHash
{
	
	/** the main Gtk struct */
	protected GdaDataModelHash* gdaDataModelHash;
	
	
	public GdaDataModelHash* getDataModelHashStruct()
	{
		return gdaDataModelHash;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdaDataModelHash;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdaDataModelHash* gdaDataModelHash)
	{
		version(noAssert)
		{
			if ( gdaDataModelHash is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gdaDataModelHash is null on constructor").newline;
				}
				else
				{
					printf("struct gdaDataModelHash is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gdaDataModelHash !is null, "struct gdaDataModelHash is null on constructor");
		}
		this.gdaDataModelHash = gdaDataModelHash;
	}
	
	/**
	 */
	
	
	/**
	 * cols :
	 *  number of columns for rows in this data model.
	 * Returns :
	 *  a pointer to the newly created GdaDataModel.
	 */
	public static DataModel newDataModelHash(int cols)
	{
		// GdaDataModel* gda_data_model_hash_new (gint cols);
		return new DataModel( gda_data_model_hash_new(cols) );
	}
	
	/**
	 * Retrieves the value at a specified column and row.
	 * model :
	 *  the GdaDataModelHash to retrieve the value from.
	 * col :
	 *  column number (starting from 0).
	 * row :
	 *  row number (starting from 0).
	 * Returns :
	 *  a pointer to a GdaValue.
	 */
	public static GdaValue* getValueAt(DataModel model, int col, int row)
	{
		// const GdaValue* gda_data_model_hash_get_value_at (GdaDataModel *model,  gint col,  gint row);
		return gda_data_model_hash_get_value_at((model is null) ? null : model.getDataModelStruct(), col, row);
	}
	
	/**
	 * Frees all the rows inserted in model.
	 * model :
	 *  the model to clear.
	 */
	public void clear()
	{
		// void gda_data_model_hash_clear (GdaDataModelHash *model);
		gda_data_model_hash_clear(gdaDataModelHash);
	}
	
	/**
	 * Sets the number of columns for rows inserted in this model.
	 * cols must be greater than or equal to 0.
	 * This function calls gda_data_model_hash_clear to free the
	 * existing rows if any.
	 * model :
	 *  the GdaDataModelHash.
	 * cols :
	 *  the number of columns for rows inserted in model.
	 */
	public void setNColumns(int cols)
	{
		// void gda_data_model_hash_set_n_columns (GdaDataModelHash *model,  gint cols);
		gda_data_model_hash_set_n_columns(gdaDataModelHash, cols);
	}
	
	/**
	 * Inserts a row in the model.
	 * model :
	 *  the GdaDataModelHash which is gonna hold the row.
	 * rownum :
	 *  the number of the row.
	 * row :
	 *  the row to insert. The model is responsible of freeing it!
	 */
	public void insertRow(int rownum, GdaRow* row)
	{
		// void gda_data_model_hash_insert_row (GdaDataModelHash *model,  gint rownum,  GdaRow *row);
		gda_data_model_hash_insert_row(gdaDataModelHash, rownum, row);
	}
	
	/**
	 * Retrieves a row from the underlying hash table.
	 * model :
	 *  the GdaDataModelHash
	 * row :
	 *  row number
	 * Returns :
	 *  a GdaRow or NULL if the requested row is not in the hash table.
	 */
	public static GdaRow* getRow(DataModel model, int row)
	{
		// const GdaRow* gda_data_model_hash_get_row (GdaDataModel *model,  gint row);
		return gda_data_model_hash_get_row((model is null) ? null : model.getDataModelStruct(), row);
	}
}
