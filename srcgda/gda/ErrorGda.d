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
 * inFile  = libgda-GdaError.html
 * outPack = gda
 * outFile = ErrorGda
 * strct   = GdaError
 * realStrct=
 * ctorStrct=
 * clss    = ErrorGda
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = GObject
 * implements:
 * prefixes:
 * 	- gda_error_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * structWrap:
 * 	- GList* -> ListG
 * module aliases:
 * local aliases:
 * overrides:
 */

module gda.ErrorGda;

public  import gdac.gdatypes;

private import gdac.gda;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ListG;



private import gobject.ObjectG;

/**
 * Description
 */
public class ErrorGda : ObjectG
{
	
	/** the main Gtk struct */
	protected GdaError* gdaError;
	
	
	public GdaError* getErrorGdaStruct()
	{
		return gdaError;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdaError;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdaError* gdaError)
	{
		super(cast(GObject*)gdaError);
		this.gdaError = gdaError;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gdaError = cast(GdaError*)obj;
	}
	
	/** */
	this (ListG glist) {
		this( cast(GdaError*)glist.data );
	}
	
	/**
	 */
	
	/**
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GdaError* gda_error_new (void);
		auto p = gda_error_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gda_error_new()");
		}
		this(cast(GdaError*) p);
	}
	
	/**
	 * Frees the memory allocated by the error object.
	 */
	public void free()
	{
		// void gda_error_free (GdaError *error);
		gda_error_free(gdaError);
	}
	
	/**
	 * Creates a new list which contains the same errors as errors and
	 * adds a reference for each error in the list.
	 * You must free the list using gda_error_list_free.
	 * Params:
	 * errors = a GList holding error objects.
	 * Returns: a list of errors.
	 */
	public static ListG listCopy(ListG errors)
	{
		// GList* gda_error_list_copy (const GList *errors);
		auto p = gda_error_list_copy((errors is null) ? null : errors.getListGStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Frees all error objects in the list and the list itself.
	 * After this function has been called, the errors parameter doesn't point
	 * to valid storage any more.
	 * Params:
	 * errors = a GList holding error objects.
	 */
	public static void listFree(ListG errors)
	{
		// void gda_error_list_free (GList *errors);
		gda_error_list_free((errors is null) ? null : errors.getListGStruct());
	}
	
	/**
	 * Returns: error's description.
	 */
	public string getDescription()
	{
		// const gchar* gda_error_get_description (GdaError *error);
		return Str.toString(gda_error_get_description(gdaError));
	}
	
	/**
	 * Sets error's description.
	 * Params:
	 * description = a description.
	 */
	public void setDescription(string description)
	{
		// void gda_error_set_description (GdaError *error,  const gchar *description);
		gda_error_set_description(gdaError, Str.toStringz(description));
	}
	
	/**
	 * Returns: error's number.
	 */
	public glong getNumber()
	{
		// glong gda_error_get_number (GdaError *error);
		return gda_error_get_number(gdaError);
	}
	
	/**
	 * Sets error's number.
	 * Params:
	 * number = a number.
	 */
	public void setNumber(glong number)
	{
		// void gda_error_set_number (GdaError *error,  glong number);
		gda_error_set_number(gdaError, number);
	}
	
	/**
	 * Returns: error's source.
	 */
	public string getSource()
	{
		// const gchar* gda_error_get_source (GdaError *error);
		return Str.toString(gda_error_get_source(gdaError));
	}
	
	/**
	 * Sets error's source.
	 * Params:
	 * source = a source.
	 */
	public void setSource(string source)
	{
		// void gda_error_set_source (GdaError *error,  const gchar *source);
		gda_error_set_source(gdaError, Str.toStringz(source));
	}
	
	/**
	 * Returns: error's SQL state.
	 */
	public string getSqlstate()
	{
		// const gchar* gda_error_get_sqlstate (GdaError *error);
		return Str.toString(gda_error_get_sqlstate(gdaError));
	}
	
	/**
	 * Sets error's SQL state.
	 * Params:
	 * sqlstate = SQL state.
	 */
	public void setSqlstate(string sqlstate)
	{
		// void gda_error_set_sqlstate (GdaError *error,  const gchar *sqlstate);
		gda_error_set_sqlstate(gdaError, Str.toStringz(sqlstate));
	}
}
