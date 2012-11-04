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
 * inFile  = libgda-GdaTable.html
 * outPack = gda
 * outFile = Table
 * strct   = GdaTable
 * realStrct=
 * ctorStrct=
 * clss    = Table
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GdaDataModelArray
 * implements:
 * prefixes:
 * 	- gda_table_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gda.DataModel
 * 	- gda.FieldAttributes
 * structWrap:
 * 	- GdaDataModel* -> DataModel
 * 	- GdaFieldAttributes* -> FieldAttributes
 * module aliases:
 * local aliases:
 * overrides:
 */

module gda.Table;

public  import gdac.gdatypes;

private import gdac.gda;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gda.DataModel;
private import gda.FieldAttributes;



private import gda.DataModelArray;

/**
 * Description
 */
public class Table : DataModelArray
{
	
	/** the main Gtk struct */
	protected GdaTable* gdaTable;
	
	
	public GdaTable* getTableStruct()
	{
		return gdaTable;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdaTable;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdaTable* gdaTable)
	{
		super(cast(GdaDataModelArray*)gdaTable);
		this.gdaTable = gdaTable;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gdaTable = cast(GdaTable*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GdaTable object, which is an in-memory representation
	 * of an entire table. It is mainly used by the GdaXmlDatabase class,
	 * but you can also use it in your applications for whatever you may need
	 * it.
	 * Params:
	 * name = name for the new table.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name)
	{
		// GdaTable* gda_table_new (const gchar *name);
		auto p = gda_table_new(Str.toStringz(name));
		if(p is null)
		{
			throw new ConstructionException("null returned by gda_table_new(Str.toStringz(name))");
		}
		this(cast(GdaTable*) p);
	}
	
	/**
	 * Creates a GdaTable object from the given GdaDataModel. This
	 * is very useful to maintain an in-memory copy of a given
	 * recordset obtained from a database. This is also used when
	 * exporting data to a GdaXmlDatabase object.
	 * Params:
	 * name = name for the new table.
	 * model = model to create the table from.
	 * addData = whether to add model's data or not.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, DataModel model, int addData)
	{
		// GdaTable* gda_table_new_from_model (const gchar *name,  const GdaDataModel *model,  gboolean add_data);
		auto p = gda_table_new_from_model(Str.toStringz(name), (model is null) ? null : model.getDataModelStruct(), addData);
		if(p is null)
		{
			throw new ConstructionException("null returned by gda_table_new_from_model(Str.toStringz(name), (model is null) ? null : model.getDataModelStruct(), addData)");
		}
		this(cast(GdaTable*) p);
	}
	
	/**
	 * Returns: the name of the given GdaTable.
	 */
	public string getName()
	{
		// const gchar* gda_table_get_name (GdaTable *table);
		return Str.toString(gda_table_get_name(gdaTable));
	}
	
	/**
	 * Sets the name of the given GdaTable.
	 * Params:
	 * name = new name for the table.
	 */
	public void setName(string name)
	{
		// void gda_table_set_name (GdaTable *table,  const gchar *name);
		gda_table_set_name(gdaTable, Str.toStringz(name));
	}
	
	/**
	 * Adds a field to the given GdaTable.
	 * Params:
	 * fa = attributes for the new field.
	 */
	public void addField(FieldAttributes fa)
	{
		// void gda_table_add_field (GdaTable *table,  const GdaFieldAttributes *fa);
		gda_table_add_field(gdaTable, (fa is null) ? null : fa.getFieldAttributesStruct());
	}
	
	/**
	 * Adds data in the given table from the given model.
	 * Params:
	 * model = a GdaDataModel object.
	 */
	public void addDataFromModel(DataModel model)
	{
		// void gda_table_add_data_from_model (GdaTable *table,  const GdaDataModel *model);
		gda_table_add_data_from_model(gdaTable, (model is null) ? null : model.getDataModelStruct());
	}
}
