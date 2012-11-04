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
 * inFile  = libgda-GdaSelect.html
 * outPack = gda
 * outFile = Select
 * strct   = GdaSelect
 * realStrct=
 * ctorStrct=GdaDataModel
 * clss    = Select
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GdaDataModelArray
 * implements:
 * prefixes:
 * 	- gda_select_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gda.DataModel
 * structWrap:
 * 	- GdaDataModel* -> DataModel
 * 	- GdaSelect* -> Select
 * module aliases:
 * local aliases:
 * overrides:
 */

module gda.Select;

public  import gdac.gdatypes;

private import gdac.gda;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gda.DataModel;



private import gda.DataModelArray;

/**
 * Description
 */
public class Select : DataModelArray
{
	
	/** the main Gtk struct */
	protected GdaSelect* gdaSelect;
	
	
	public GdaSelect* getSelectStruct()
	{
		return gdaSelect;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdaSelect;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdaSelect* gdaSelect)
	{
		super(cast(GdaDataModelArray*)gdaSelect);
		this.gdaSelect = gdaSelect;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gdaSelect = cast(GdaSelect*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GdaSelect object, which allows programs to filter
	 * GdaDataModel's based on a given SQL SELECT command.
	 * A GdaSelect is just another GdaDataModel-based class, so it
	 * can be used in the same way any other data model class is.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GdaDataModel* gda_select_new (void);
		auto p = gda_select_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gda_select_new()");
		}
		this(cast(GdaSelect*) p);
	}
	
	/**
	 * Adds a data model as a source of data for the GdaSelect object. When
	 * the select object is run (via gda_select_run), it will parse the SQL
	 * and get the required data from the source data models.
	 * Params:
	 * name = name to identify the data model (usually a table name).
	 * source = a GdaDataModel from which to get data.
	 */
	public void addSource(string name, DataModel source)
	{
		// void gda_select_add_source (GdaSelect *sel,  const gchar *name,  GdaDataModel *source);
		gda_select_add_source(gdaSelect, Str.toStringz(name), (source is null) ? null : source.getDataModelStruct());
	}
	
	/**
	 * Sets the SQL command to be used on the given GdaSelect object
	 * for filtering rows from the source data model (which is
	 * set with gda_select_set_source).
	 * Params:
	 * sql = the SQL command to be used for filtering rows.
	 */
	public void setSql(string sql)
	{
		// void gda_select_set_sql (GdaSelect *sel,  const gchar *sql);
		gda_select_set_sql(gdaSelect, Str.toStringz(sql));
	}
	
	/**
	 * Runs the query and fills in the GdaSelect object with the
	 * rows that matched the SQL command (which can be set with
	 * gda_select_set_sql) associated with this GdaSelect
	 * object.
	 * After calling this function, if everything is successful,
	 * the GdaSelect object will contain the matched rows, which
	 * can then be accessed like a normal GdaDataModel.
	 * Returns: TRUE if successful, FALSE if there was an error.
	 */
	public int run()
	{
		// gboolean gda_select_run (GdaSelect *sel);
		return gda_select_run(gdaSelect);
	}
}
