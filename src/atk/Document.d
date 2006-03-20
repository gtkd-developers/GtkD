/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = atk
 * outFile = Document
 * strct   = AtkDocument
 * realStrct=
 * clss    = Document
 * extend  = 
 * prefixes:
 * 	- atk_document_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * structWrap:
 * local aliases:
 */

module atk.Document;

private import atk.typedefs;

private import lib.atk;

private import glib.Str;

/**
 * Description
 * The AtkDocument interface should be supported by any object that has an
 * associated document object model (DOM). This interface provides the
 * standard mechanism allowing an assistive technology access to the DOM.
 */
public class Document
{
	
	/** the main Gtk struct */
	protected AtkDocument* atkDocument;
	
	
	public AtkDocument* getDocumentStruct()
	{
		return atkDocument;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)atkDocument;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (AtkDocument* atkDocument)
	{
		this.atkDocument = atkDocument;
	}
	
	/**
	 */
	
	
	/**
	 * Gets a string indicating the document type.
	 * document:
	 *  a GObject instance that implements AtkDocumentIface
	 * Returns:
	 *  a string indicating the document type
	 */
	public char[] getDocumentType()
	{
		// const gchar* atk_document_get_document_type (AtkDocument *document);
		return Str.toString(atk_document_get_document_type(atkDocument) );
	}
	
	/**
	 * Gets a gpointer that points to an instance of the DOM. It is
	 * up to the caller to check atk_document_get_type to determine
	 * how to cast this pointer.
	 * document:
	 *  a GObject instance that implements AtkDocumentIface
	 * Returns:
	 *  a gpointer that points to an instance of the DOM.
	 */
	public void* getDocument()
	{
		// gpointer atk_document_get_document (AtkDocument *document);
		return atk_document_get_document(atkDocument);
	}
}
