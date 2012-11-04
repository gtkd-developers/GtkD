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
 * inFile  = GTlsServerConnection.html
 * outPack = gio
 * outFile = TlsServerConnection
 * strct   = GTlsServerConnection
 * realStrct=
 * ctorStrct=GIOStream
 * clss    = TlsServerConnection
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GTlsConnection
 * implements:
 * prefixes:
 * 	- g_tls_server_connection_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.IOStream
 * 	- gio.TlsCertificate
 * structWrap:
 * 	- GIOStream* -> IOStream
 * 	- GTlsCertificate* -> TlsCertificate
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.TlsServerConnection;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.ErrorG;
private import glib.GException;
private import gio.IOStream;
private import gio.TlsCertificate;



private import gio.TlsConnection;

/**
 * Description
 * GTlsServerConnection is the server-side subclass of GTlsConnection,
 * representing a server-side TLS connection.
 */
public class TlsServerConnection : TlsConnection
{
	
	/** the main Gtk struct */
	protected GTlsServerConnection* gTlsServerConnection;
	
	
	public GTlsServerConnection* getTlsServerConnectionStruct()
	{
		return gTlsServerConnection;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gTlsServerConnection;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GTlsServerConnection* gTlsServerConnection)
	{
		super(cast(GTlsConnection*)gTlsServerConnection);
		this.gTlsServerConnection = gTlsServerConnection;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gTlsServerConnection = cast(GTlsServerConnection*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GTlsServerConnection wrapping base_io_stream (which
	 * must have pollable input and output streams).
	 * Since 2.28
	 * Params:
	 * baseIoStream = the GIOStream to wrap
	 * certificate = the default server certificate, or NULL. [allow-none]
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (IOStream baseIoStream, TlsCertificate certificate)
	{
		// GIOStream * g_tls_server_connection_new (GIOStream *base_io_stream,  GTlsCertificate *certificate,  GError **error);
		GError* err = null;
		
		auto p = g_tls_server_connection_new((baseIoStream is null) ? null : baseIoStream.getIOStreamStruct(), (certificate is null) ? null : certificate.getTlsCertificateStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_tls_server_connection_new((baseIoStream is null) ? null : baseIoStream.getIOStreamStruct(), (certificate is null) ? null : certificate.getTlsCertificateStruct(), &err)");
		}
		this(cast(GTlsServerConnection*) p);
	}
}
