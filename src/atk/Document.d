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
 * inFile  = AtkDocument.html
 * outPack = atk
 * outFile = Document
 * strct   = AtkDocument
 * realStrct=
 * ctorStrct=
 * clss    = Document
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- atk_document_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module atk.Document;

public  import gtkc.atktypes;

private import gtkc.atk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;




/**
 * The AtkDocument interface should be supported by any object whose content is a
 * representation or view of a document. The AtkDocument interface should appear
 * on the toplevel container for the document content; however AtkDocument
 * instances may be nested (i.e. an AtkDocument may be a descendant of another
 * AtkDocument) in those cases where one document contains "embedded content"
 * which can reasonably be considered a document in its own right.
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
	int[string] connectedSignals;
	
	void delegate(Document)[] onLoadCompleteListeners;
	/**
	 * The 'load-complete' signal is emitted when a pending load of a static
	 * document has completed. This signal is to be expected by ATK clients
	 * if and when AtkDocument implementors expose ATK_STATE_BUSY. If the state
	 * of an AtkObject which implements AtkDocument does not include ATK_STATE_BUSY,
	 * it should be safe for clients to assume that the AtkDocument's static contents
	 * are fully loaded into the container. (Dynamic document contents should
	 * be exposed via other signals.)
	 */
	void addOnLoadComplete(void delegate(Document) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("load-complete" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"load-complete",
			cast(GCallback)&callBackLoadComplete,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["load-complete"] = 1;
		}
		onLoadCompleteListeners ~= dlg;
	}
	extern(C) static void callBackLoadComplete(AtkDocument* atkdocumentStruct, Document _document)
	{
		foreach ( void delegate(Document) dlg ; _document.onLoadCompleteListeners )
		{
			dlg(_document);
		}
	}
	
	void delegate(Document)[] onLoadStoppedListeners;
	/**
	 * The 'load-stopped' signal is emitted when a pending load of document contents
	 * is cancelled, paused, or otherwise interrupted by the user or application
	 * logic. It should not however be
	 * emitted while waiting for a resource (for instance while blocking on a file or
	 * network read) unless a user-significant timeout has occurred.
	 */
	void addOnLoadStopped(void delegate(Document) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("load-stopped" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"load-stopped",
			cast(GCallback)&callBackLoadStopped,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["load-stopped"] = 1;
		}
		onLoadStoppedListeners ~= dlg;
	}
	extern(C) static void callBackLoadStopped(AtkDocument* atkdocumentStruct, Document _document)
	{
		foreach ( void delegate(Document) dlg ; _document.onLoadStoppedListeners )
		{
			dlg(_document);
		}
	}
	
	void delegate(Document)[] onReloadListeners;
	/**
	 * The 'reload' signal is emitted when the contents of a document is refreshed
	 * from its source. Once 'reload' has been emitted, a matching 'load-complete'
	 * or 'load-stopped' signal should follow, which clients may await before
	 * interrogating ATK for the latest document content.
	 */
	void addOnReload(void delegate(Document) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("reload" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"reload",
			cast(GCallback)&callBackReload,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["reload"] = 1;
		}
		onReloadListeners ~= dlg;
	}
	extern(C) static void callBackReload(AtkDocument* atkdocumentStruct, Document _document)
	{
		foreach ( void delegate(Document) dlg ; _document.onReloadListeners )
		{
			dlg(_document);
		}
	}
	
	
	/**
	 * Gets a string indicating the document type.
	 * Returns: a string indicating the document type
	 */
	public string getDocumentType()
	{
		// const gchar * atk_document_get_document_type (AtkDocument *document);
		return Str.toString(atk_document_get_document_type(atkDocument));
	}
	
	/**
	 * Gets a gpointer that points to an instance of the DOM. It is
	 * up to the caller to check atk_document_get_type to determine
	 * how to cast this pointer.
	 * Returns: a gpointer that points to an instance of the DOM. [transfer none]
	 */
	public void* getDocument()
	{
		// gpointer atk_document_get_document (AtkDocument *document);
		return atk_document_get_document(atkDocument);
	}
	
	/**
	 * Since 1.12
	 * Params:
	 * attributeName = a character string representing the name of the attribute
	 * whose value is being queried.
	 * Returns: a string value associated with the named attribute for this document, or NULL if a value for attribute_name has not been specified for this document. Virtual: get_document_attribute_value
	 */
	public string getAttributeValue(string attributeName)
	{
		// const gchar * atk_document_get_attribute_value (AtkDocument *document,  const gchar *attribute_name);
		return Str.toString(atk_document_get_attribute_value(atkDocument, Str.toStringz(attributeName)));
	}
	
	/**
	 * Since 1.12
	 * Params:
	 * attributeName = a character string representing the name of the attribute
	 * whose value is being set.
	 * attributeValue = a string value to be associated with attribute_name.
	 * Returns: TRUE if value is successfully associated with attribute_name for this document, FALSE otherwise (e.g. if the document does not allow the attribute to be modified). Virtual: set_document_attribute
	 */
	public int setAttributeValue(string attributeName, string attributeValue)
	{
		// gboolean atk_document_set_attribute_value (AtkDocument *document,  const gchar *attribute_name,  const gchar *attribute_value);
		return atk_document_set_attribute_value(atkDocument, Str.toStringz(attributeName), Str.toStringz(attributeValue));
	}
	
	/**
	 * Gets an AtkAttributeSet which describes document-wide
	 *  attributes as name-value pairs.
	 * Since 1.12
	 * Returns: An AtkAttributeSet containing the explicitly set name-value-pair attributes associated with this document as a whole. Virtual: get_document_attributes. [transfer none]
	 */
	public AtkAttributeSet* getAttributes()
	{
		// AtkAttributeSet * atk_document_get_attributes (AtkDocument *document);
		return atk_document_get_attributes(atkDocument);
	}
	
	/**
	 * Warning
	 * atk_document_get_locale is deprecated and should not be used in newly-written code. This method is deprecated since ATK version
	 * 2.7.90. Please use atk_object_get_object_locale instead.
	 * Gets a UTF-8 string indicating the POSIX-style LC_MESSAGES locale
	 *  of the content of this document instance. Individual
	 *  text substrings or images within this document may have
	 *  a different locale, see atk_text_get_attributes and
	 *  atk_image_get_image_locale.
	 * Returns: a UTF-8 string indicating the POSIX-style LC_MESSAGES locale of the document content as a whole, or NULL if the document content does not specify a locale. Virtual: get_document_locale Signal Details The "load-complete" signal void user_function (AtkDocument *atkdocument, gpointer user_data) : Run Last The 'load-complete' signal is emitted when a pending load of a static document has completed. This signal is to be expected by ATK clients if and when AtkDocument implementors expose ATK_STATE_BUSY. If the state of an AtkObject which implements AtkDocument does not include ATK_STATE_BUSY, it should be safe for clients to assume that the AtkDocument's static contents are fully loaded into the container. (Dynamic document contents should be exposed via other signals.)
	 */
	public string getLocale()
	{
		// const gchar * atk_document_get_locale (AtkDocument *document);
		return Str.toString(atk_document_get_locale(atkDocument));
	}
}
