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
 * imports:
 * 	- glib.Str
 * structWrap:
 * local aliases:
 */

module atk.Document;

private import gtkc.atktypes;

private import gtkc.atk;

private import glib.Str;

/**
 * Description
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
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(Document)[] onLoadCompleteListeners;
	void addOnLoadComplete(void delegate(Document) dlg)
	{
		if ( !("load-complete" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"load-complete",
			cast(GCallback)&callBackLoadComplete,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["load-complete"] = 1;
		}
		onLoadCompleteListeners ~= dlg;
	}
	extern(C) static void callBackLoadComplete(AtkDocument* atkdocumentStruct, Document document)
	{
		bit consumed = false;
		
		foreach ( void delegate(Document) dlg ; document.onLoadCompleteListeners )
		{
			dlg(document);
		}
		
		return consumed;
	}
	
	void delegate(Document)[] onLoadStoppedListeners;
	void addOnLoadStopped(void delegate(Document) dlg)
	{
		if ( !("load-stopped" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"load-stopped",
			cast(GCallback)&callBackLoadStopped,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["load-stopped"] = 1;
		}
		onLoadStoppedListeners ~= dlg;
	}
	extern(C) static void callBackLoadStopped(AtkDocument* atkdocumentStruct, Document document)
	{
		bit consumed = false;
		
		foreach ( void delegate(Document) dlg ; document.onLoadStoppedListeners )
		{
			dlg(document);
		}
		
		return consumed;
	}
	
	void delegate(Document)[] onReloadListeners;
	void addOnReload(void delegate(Document) dlg)
	{
		if ( !("reload" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"reload",
			cast(GCallback)&callBackReload,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["reload"] = 1;
		}
		onReloadListeners ~= dlg;
	}
	extern(C) static void callBackReload(AtkDocument* atkdocumentStruct, Document document)
	{
		bit consumed = false;
		
		foreach ( void delegate(Document) dlg ; document.onReloadListeners )
		{
			dlg(document);
		}
		
		return consumed;
	}
	
	
	
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
	
	/**
	 * Returns:
	 * document:
	 *  a GObject instance that implements AtkDocumentIface
	 * attribute_name:
	 *  a character string representing the name of the attribute
	 *  whose value is being queried.
	 * Returns:
	 *  a string value associated with the named attribute for this
	 *  document, or NULL if a value for attribute_name has not been specified
	 *  for this document.
	 * Since ATK 1.12
	 */
	public char[] getAttributeValue(char[] attributeName)
	{
		// const gchar* atk_document_get_attribute_value  (AtkDocument *document,  const gchar *attribute_name);
		return Str.toString(atk_document_get_attribute_value(atkDocument, Str.toStringz(attributeName)) );
	}
	
	/**
	 * Returns:
	 * document:
	 *  a GObject instance that implements AtkDocumentIface
	 * attribute_name:
	 *  a character string representing the name of the attribute
	 *  whose value is being set.
	 * attribute_value:
	 *  a string value to be associated with attribute_name.
	 * Returns:
	 *  TRUE if value is successfully associated with attribute_name
	 *  for this document, FALSE otherwise (e.g. if the document does not
	 *  allow the attribute to be modified).
	 * Since ATK 1.12
	 */
	public int setAttributeValue(char[] attributeName, char[] attributeValue)
	{
		// gboolean atk_document_set_attribute_value  (AtkDocument *document,  const gchar *attribute_name,  const gchar *attribute_value);
		return atk_document_set_attribute_value(atkDocument, Str.toStringz(attributeName), Str.toStringz(attributeValue));
	}
	
	/**
	 * Gets an AtkAttributeSet which describes document-wide
	 *  attributes as name-value pairs.
	 * Returns:
	 * document:
	 *  a GObject instance that implements AtkDocumentIface
	 * Returns:
	 *  An AtkAttributeSet containing the explicitly
	 *  set name-value-pair attributes associated with this document
	 *  as a whole.
	 * Since ATK 1.12
	 */
	public AtkAttributeSet* getAttributes()
	{
		// AtkAttributeSet* atk_document_get_attributes  (AtkDocument *document);
		return atk_document_get_attributes(atkDocument);
	}
	
	/**
	 * Gets a UTF-8 string indicating the POSIX-style LC_MESSAGES locale
	 *  of the content of this document instance. Individual
	 *  text substrings or images within this document may have
	 *  a different locale, see atk_text_get_attributes and
	 *  atk_image_get_image_locale.
	 * document:
	 *  a GObject instance that implements AtkDocumentIface
	 * Returns:
	 *  a UTF-8 string indicating the POSIX-style LC_MESSAGES
	 *  locale of the document content as a whole, or NULL if
	 *  the document content does not specify a locale.
	 * Signal Details
	 * The "load-complete" signal
	 * void user_function (AtkDocument *atkdocument,
	 *  gpointer user_data) : Run last
	 * The 'load-complete' signal is emitted when a pending load of a static
	 * document has completed. This signal is to be expected by ATK clients
	 * if and when AtkDocument implementors expose ATK_STATE_BUSY. If the state
	 * of an AtkObject which implements AtkDocument does not include ATK_STATE_BUSY,
	 * it should be safe for clients to assume that the AtkDocument's static contents
	 * are fully loaded into the container. (Dynamic document contents should
	 * be exposed via other signals.)
	 * atkdocument:
	 * the object which received the signal.
	 * user_data:
	 * user data set when the signal handler was connected.
	 */
	public char[] getLocale()
	{
		// const gchar* atk_document_get_locale (AtkDocument *document);
		return Str.toString(atk_document_get_locale(atkDocument) );
	}
	
	
}
