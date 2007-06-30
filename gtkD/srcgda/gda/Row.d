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
 * inFile  = libgda-gda-row.html
 * outPack = gda
 * outFile = Row
 * strct   = GdaRow
 * realStrct=
 * ctorStrct=
 * clss    = Row
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gda_row_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gda.Value
 * 	- gda.DataModel
 * structWrap:
 * 	- GdaDataModel* -> DataModel
 * 	- GdaRow* -> Row
 * 	- GdaValue* -> Value
 * module aliases:
 * local aliases:
 */

module gda.Row;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gdac.gdatypes;

private import gdac.gda;


private import gda.Value;
private import gda.DataModel;




/**
 * Description
 */
public class Row
{
	
	/** the main Gtk struct */
	protected GdaRow* gdaRow;
	
	
	public GdaRow* getRowStruct()
	{
		return gdaRow;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdaRow;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdaRow* gdaRow)
	{
		version(noAssert)
		{
			if ( gdaRow is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gdaRow is null on constructor").newline;
				}
				else
				{
					printf("struct gdaRow is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gdaRow !is null, "struct gdaRow is null on constructor");
		}
		this.gdaRow = gdaRow;
	}
	
	/**
	 */
	
	
	
	
	/**
	 * Returns :
	 */
	public static GType getType()
	{
		// GType gda_row_get_type (void);
		return gda_row_get_type();
	}
	
	/**
	 * Creates a GdaRow which can hold count GdaValue.
	 * model :
	 *  the GdaDataModel this row belongs to.
	 * count :
	 *  number of GdaValue in the new GdaRow.
	 * Returns :
	 *  the newly allocated GdaRow.
	 */
	public this (DataModel model, int count)
	{
		// GdaRow* gda_row_new (GdaDataModel *model,  gint count);
		this(cast(GdaRow*)gda_row_new((model is null) ? null : model.getDataModelStruct(), count) );
	}
	
	/**
	 * Creates a GdaRow from a list of GdaValue's. These GdaValue's are
	 * value-copied and the user are still resposible for freeing them.
	 * model :
	 *  a GdaDataModel.
	 * values :
	 *  a list of GdaValue's.
	 * Returns :
	 *  the newly created row.
	 */
	public this (DataModel model, GList* values)
	{
		// GdaRow* gda_row_new_from_list (GdaDataModel *model,  const GList *values);
		this(cast(GdaRow*)gda_row_new_from_list((model is null) ? null : model.getDataModelStruct(), values) );
	}
	
	/**
	 * Creates a new GdaRow from an existing one.
	 * row :
	 *  quark_list to get a copy from.
	 * Returns :
	 *  a newly allocated GdaRow with a copy of the data in row.
	 */
	public Row copy()
	{
		// GdaRow* gda_row_copy (GdaRow *row);
		return new Row( gda_row_copy(gdaRow) );
	}
	
	/**
	 * Deallocates all memory associated to a GdaRow.
	 * row :
	 *  the resource to free.
	 */
	public void free()
	{
		// void gda_row_free (GdaRow *row);
		gda_row_free(gdaRow);
	}
	
	/**
	 * Gets the GdaDataModel the given GdaRow belongs to.
	 * row :
	 *  a GdaRow.
	 * Returns :
	 *  a GdaDataModel.
	 */
	public DataModel getModel()
	{
		// GdaDataModel* gda_row_get_model (GdaRow *row);
		return new DataModel( gda_row_get_model(gdaRow) );
	}
	
	/**
	 * Gets the number of the given row, that is, its position in its containing
	 * data model.
	 * row :
	 *  a GdaRow.
	 * Returns :
	 *  the row number, or -1 if there was an error.
	 */
	public int getNumber()
	{
		// gint gda_row_get_number (GdaRow *row);
		return gda_row_get_number(gdaRow);
	}
	
	/**
	 * Sets the row number for the given row.
	 * row :
	 *  a GdaRow.
	 * number :
	 *  the new row number.
	 */
	public void setNumber(int number)
	{
		// void gda_row_set_number (GdaRow *row,  gint number);
		gda_row_set_number(gdaRow, number);
	}
	
	/**
	 * Returns the unique identifier for this row. This identifier is
	 * assigned by the different providers, to uniquely identify
	 * rows returned to clients. If there is no ID, this means that
	 * the row has not been created by a provider, or that it the
	 * provider cannot identify it (ie, modifications to it won't
	 * take place into the database).
	 * row :
	 *  a GdaRow (which contains GdaValue).
	 * Returns :
	 *  the unique identifier for this row.
	 */
	public char[] getId()
	{
		// const gchar* gda_row_get_id (GdaRow *row);
		return Str.toString(gda_row_get_id(gdaRow) );
	}
	
	/**
	 * Assigns a new identifier to the given row. This function is
	 * usually called by providers.
	 * row :
	 *  a GdaRow (which contains GdaValue).
	 * id :
	 *  new identifier for the row.
	 */
	public void setId(char[] id)
	{
		// void gda_row_set_id (GdaRow *row,  const gchar *id);
		gda_row_set_id(gdaRow, Str.toStringz(id));
	}
	
	/**
	 * Gets a pointer to a GdaValue stored in a GdaRow.
	 * This is a pointer to the internal array of values. Don't try to free
	 * or modify it!
	 * row :
	 *  a GdaRow (which contains GdaValue).
	 * num :
	 *  field index.
	 * Returns :
	 *  a pointer to the GdaValue in the position num of row.
	 */
	public Value getValue(int num)
	{
		// GdaValue* gda_row_get_value (GdaRow *row,  gint num);
		return new Value( gda_row_get_value(gdaRow, num) );
	}
	
	/**
	 * row :
	 *  a GdaRow.
	 * Returns :
	 *  the number of columns that the row has.
	 */
	public int getLength()
	{
		// gint gda_row_get_length (GdaRow *row);
		return gda_row_get_length(gdaRow);
	}
}
