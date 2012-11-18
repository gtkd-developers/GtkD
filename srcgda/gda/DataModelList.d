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
 * inFile  = libgda-GdaDataModelList.html
 * outPack = gda
 * outFile = DataModelList
 * strct   = GdaDataModelList
 * realStrct=
 * ctorStrct=GdaDataModel
 * clss    = DataModelList
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GdaDataModel
 * implements:
 * prefixes:
 * 	- gda_data_model_list_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ListG
 * 	- gda.Value
 * 	- gda.Row
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdaRow* -> Row
 * 	- GdaValue* -> Value
 * module aliases:
 * local aliases:
 * overrides:
 */

module gda.DataModelList;

public  import gdac.gdatypes;

private import gdac.gda;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.ListG;
private import gda.Value;
private import gda.Row;



private import gda.DataModel;

/**
 * Description
 */
public class DataModelList : DataModel
{
	
	/** the main Gtk struct */
	protected GdaDataModelList* gdaDataModelList;
	
	
	public GdaDataModelList* getDataModelListStruct()
	{
		return gdaDataModelList;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdaDataModelList;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdaDataModelList* gdaDataModelList)
	{
		super(cast(GdaDataModel*)gdaDataModelList);
		this.gdaDataModelList = gdaDataModelList;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gdaDataModelList = cast(GdaDataModelList*)obj;
	}
	
	/**
	 */
	
	/**
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GdaDataModel* gda_data_model_list_new (void);
		auto p = gda_data_model_list_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gda_data_model_list_new()");
		}
		this(cast(GdaDataModelList*) p);
	}
	
	/**
	 * Params:
	 * list = a list of strings.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ListG list)
	{
		// GdaDataModel* gda_data_model_list_new_from_string_list  (const GList *list);
		auto p = gda_data_model_list_new_from_string_list((list is null) ? null : list.getListGStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gda_data_model_list_new_from_string_list((list is null) ? null : list.getListGStruct())");
		}
		this(cast(GdaDataModelList*) p);
	}
	
	/**
	 * Inserts a row in the model, using value.
	 * Params:
	 * value = a GdaValue which will be used to fill the row.
	 * Returns: the GdaRow which has been inserted, or NULL on failure.
	 */
	public Row appendValue(Value value)
	{
		// const GdaRow* gda_data_model_list_append_value (GdaDataModelList *model,  const GdaValue *value);
		auto p = gda_data_model_list_append_value(gdaDataModelList, (value is null) ? null : value.getValueStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Row)(cast(GdaRow*) p);
	}
}
