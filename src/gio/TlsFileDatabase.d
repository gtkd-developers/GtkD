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
 * inFile  = GTlsFileDatabase.html
 * outPack = gio
 * outFile = TlsFileDatabase
 * strct   = GTlsFileDatabase
 * realStrct=
 * ctorStrct=GTlsDatabase
 * clss    = TlsFileDatabase
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GTlsDatabase
 * implements:
 * prefixes:
 * 	- g_tls_file_database_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.TlsFileDatabase;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;



private import gio.TlsDatabase;

/**
 * Description
 * GTlsFileDatabase is implemented by GTlsDatabase objects which load
 * their certificate information from a file. It is in interface which
 * TLS library specific subtypes implement.
 */
public class TlsFileDatabase : TlsDatabase
{
	
	/** the main Gtk struct */
	protected GTlsFileDatabase* gTlsFileDatabase;
	
	
	public GTlsFileDatabase* getTlsFileDatabaseStruct()
	{
		return gTlsFileDatabase;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gTlsFileDatabase;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GTlsFileDatabase* gTlsFileDatabase)
	{
		super(cast(GTlsDatabase*)gTlsFileDatabase);
		this.gTlsFileDatabase = gTlsFileDatabase;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gTlsFileDatabase = cast(GTlsFileDatabase*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GTlsFileDatabase which uses anchor certificate authorities
	 * in anchors to verify certificate chains.
	 * The certificates in anchors must be PEM encoded.
	 * Since 2.30
	 * Params:
	 * anchors = filename of anchor certificate authorities.
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string anchors)
	{
		// GTlsDatabase * g_tls_file_database_new (const gchar *anchors,  GError **error);
		GError* err = null;
		
		auto p = g_tls_file_database_new(Str.toStringz(anchors), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_tls_file_database_new(Str.toStringz(anchors), &err)");
		}
		this(cast(GTlsFileDatabase*) p);
	}
}
