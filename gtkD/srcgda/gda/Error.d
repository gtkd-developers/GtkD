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
 * inFile  = libgda-GdaError.html
 * outPack = gda
 * outFile = Error
 * strct   = GdaError
 * realStrct=
 * ctorStrct=
 * clss    = Error
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gda_error_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.ListG
 * structWrap:
 * 	- GList* -> ListG
 * module aliases:
 * local aliases:
 */

module gda.Error;

private import gdac.gdatypes;

private import gdac.gda;

private import glib.ListG;



/**
 * Description
 */
public class Error
{
	
	/** the main Gtk struct */
	protected GdaError* gdaError;
	
	
	public GdaError* getErrorStruct()
	{
		return gdaError;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdaError;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdaError* gdaError)
	{
		this.gdaError = gdaError;
	}
	
	this (ListG glist) {
		this.gdaError = cast(GdaError *) glist.data;
	}
	
	/**
	 */
	
	
	/**
	 * Returns :
	 */
	public this ()
	{
		// GdaError* gda_error_new (void);
		this(cast(GdaError*)gda_error_new() );
	}
	
	/**
	 * Frees the memory allocated by the error object.
	 * error :
	 *  the error object.
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
	 * errors :
	 *  a GList holding error objects.
	 * Returns :
	 *  a list of errors.
	 */
	public static ListG listCopy(ListG errors)
	{
		// GList* gda_error_list_copy (const GList *errors);
		return new ListG( gda_error_list_copy((errors is null) ? null : errors.getListGStruct()) );
	}
	
	/**
	 * Frees all error objects in the list and the list itself.
	 * After this function has been called, the errors parameter doesn't point
	 * to valid storage any more.
	 * errors :
	 *  a GList holding error objects.
	 */
	public static void listFree(ListG errors)
	{
		// void gda_error_list_free (GList *errors);
		gda_error_list_free((errors is null) ? null : errors.getListGStruct());
	}
	
	/**
	 * error :
	 *  a GdaError.
	 * Returns :
	 *  error's description.
	 */
	public char[] getDescription()
	{
		// const gchar* gda_error_get_description (GdaError *error);
		return Str.toString(gda_error_get_description(gdaError) );
	}
	
	/**
	 * Sets error's description.
	 * error :
	 *  a GdaError.
	 * description :
	 *  a description.
	 */
	public void setDescription(char[] description)
	{
		// void gda_error_set_description (GdaError *error,  const gchar *description);
		gda_error_set_description(gdaError, Str.toStringz(description));
	}
	
	/**
	 * error :
	 *  a GdaError.
	 * Returns :
	 *  error's number.
	 */
	public int getNumber()
	{
		// glong gda_error_get_number (GdaError *error);
		return gda_error_get_number(gdaError);
	}
	
	/**
	 * Sets error's number.
	 * error :
	 *  a GdaError.
	 * number :
	 *  a number.
	 */
	public void setNumber(int number)
	{
		// void gda_error_set_number (GdaError *error,  glong number);
		gda_error_set_number(gdaError, number);
	}
	
	/**
	 * error :
	 *  a GdaError.
	 * Returns :
	 *  error's source.
	 */
	public char[] getSource()
	{
		// const gchar* gda_error_get_source (GdaError *error);
		return Str.toString(gda_error_get_source(gdaError) );
	}
	
	/**
	 * Sets error's source.
	 * error :
	 *  a GdaError.
	 * source :
	 *  a source.
	 */
	public void setSource(char[] source)
	{
		// void gda_error_set_source (GdaError *error,  const gchar *source);
		gda_error_set_source(gdaError, Str.toStringz(source));
	}
	
	/**
	 * error :
	 *  a GdaError.
	 * Returns :
	 *  error's SQL state.
	 */
	public char[] getSqlstate()
	{
		// const gchar* gda_error_get_sqlstate (GdaError *error);
		return Str.toString(gda_error_get_sqlstate(gdaError) );
	}
	
	/**
	 * Sets error's SQL state.
	 * error :
	 *  a GdaError.
	 * sqlstate :
	 *  SQL state.
	 */
	public void setSqlstate(char[] sqlstate)
	{
		// void gda_error_set_sqlstate (GdaError *error,  const gchar *sqlstate);
		gda_error_set_sqlstate(gdaError, Str.toStringz(sqlstate));
	}
}
