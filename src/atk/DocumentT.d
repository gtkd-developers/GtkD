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


module atk.DocumentT;

public  import glib.Str;
public  import gobject.Signals;
public  import gtkc.atk;
public  import gtkc.atktypes;
public  import gtkc.gdktypes;


/**
 * The AtkDocument interface should be supported by any object whose
 * content is a representation or view of a document.  The AtkDocument
 * interface should appear on the toplevel container for the document
 * content; however AtkDocument instances may be nested (i.e. an
 * AtkDocument may be a descendant of another AtkDocument) in those
 * cases where one document contains "embedded content" which can
 * reasonably be considered a document in its own right.
 */
public template DocumentT(TStruct)
{
	/** Get the main Gtk struct */
	public AtkDocument* getDocumentStruct()
	{
		return cast(AtkDocument*)getStruct();
	}


	/**
	 *
	 * Params:
	 *     attributeName = a character string representing the name of the attribute
	 *         whose value is being queried.
	 * Return: a string value associated with the named
	 *     attribute for this document, or NULL if a value for
	 *     #attribute_name has not been specified for this document.
	 *
	 * Since: 1.12
	 */
	public string getAttributeValue(string attributeName)
	{
		return Str.toString(atk_document_get_attribute_value(getDocumentStruct(), Str.toStringz(attributeName)));
	}

	/**
	 * Gets an AtkAttributeSet which describes document-wide
	 * attributes as name-value pairs.
	 *
	 * Return: An AtkAttributeSet containing the explicitly
	 *     set name-value-pair attributes associated with this document
	 *     as a whole.
	 *
	 * Since: 1.12
	 */
	public override AtkAttributeSet* getAttributes()
	{
		return atk_document_get_attributes(getDocumentStruct());
	}

	/**
	 * Return: current page number inside @document. -1 if not
	 *     implemented, not know by the implementor or irrelevant.
	 *
	 * Since: 2.12
	 */
	public int getCurrentPageNumber()
	{
		return atk_document_get_current_page_number(getDocumentStruct());
	}

	/**
	 * Gets a %gpointer that points to an instance of the DOM.  It is
	 * up to the caller to check atk_document_get_type to determine
	 * how to cast this pointer.
	 *
	 * Deprecated: Since 2.12. @document is already a representation of
	 * the document. Use it directly, or one of its children, as an
	 * instance of the DOM.
	 *
	 * Return: a %gpointer that points to an instance of the DOM.
	 */
	public void* getDocument()
	{
		return atk_document_get_document(getDocumentStruct());
	}

	/**
	 * Gets a string indicating the document type.
	 *
	 * Deprecated: Since 2.12. Please use atk_document_get_attributes() to
	 * ask for the document type if it applies.
	 *
	 * Return: a string indicating the document type
	 */
	public string getDocumentType()
	{
		return Str.toString(atk_document_get_document_type(getDocumentStruct()));
	}

	/**
	 * Gets a UTF-8 string indicating the POSIX-style LC_MESSAGES locale
	 * of the content of this document instance.  Individual
	 * text substrings or images within this document may have
	 * a different locale, see atk_text_get_attributes and
	 * atk_image_get_image_locale.
	 *
	 * Deprecated: Please use atk_object_get_object_locale() instead.
	 *
	 * Return: a UTF-8 string indicating the POSIX-style LC_MESSAGES
	 *     locale of the document content as a whole, or NULL if
	 *     the document content does not specify a locale.
	 */
	public string getLocale()
	{
		return Str.toString(atk_document_get_locale(getDocumentStruct()));
	}

	/**
	 * Return: total page count of @document. -1 if not implemented, not
	 *     know by the implementor or irrelevant.
	 *
	 * Since: 2.12
	 */
	public int getPageCount()
	{
		return atk_document_get_page_count(getDocumentStruct());
	}

	/**
	 *
	 * Params:
	 *     attributeName = a character string representing the name of the attribute
	 *         whose value is being set.
	 *     attributeValue = a string value to be associated with #attribute_name.
	 * Return: TRUE if #value is successfully associated with #attribute_name
	 *     for this document, FALSE otherwise (e.g. if the document does not
	 *     allow the attribute to be modified).
	 *
	 * Since: 1.12
	 */
	public bool setAttributeValue(string attributeName, string attributeValue)
	{
		return atk_document_set_attribute_value(getDocumentStruct(), Str.toStringz(attributeName), Str.toStringz(attributeValue)) != 0;
	}

	int[string] connectedSignals;

	void delegate(DocumentIF)[] _onLoadCompleteListeners;
	@property void delegate(DocumentIF)[] onLoadCompleteListeners()
	{
		return _onLoadCompleteListeners;
	}
	/**
	 * The 'load-complete' signal is emitted when a pending load of
	 * a static document has completed.  This signal is to be
	 * expected by ATK clients if and when AtkDocument implementors
	 * expose ATK_STATE_BUSY.  If the state of an AtkObject which
	 * implements AtkDocument does not include ATK_STATE_BUSY, it
	 * should be safe for clients to assume that the AtkDocument's
	 * static contents are fully loaded into the container.
	 * (Dynamic document contents should be exposed via other
	 * signals.)
	 */
	void addOnLoadComplete(void delegate(DocumentIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "load-complete" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"load-complete",
				cast(GCallback)&callBackLoadComplete,
				cast(void*)cast(DocumentIF)this,
				null,
				connectFlags);
			connectedSignals["load-complete"] = 1;
		}
		_onLoadCompleteListeners ~= dlg;
	}
	extern(C) static void callBackLoadComplete(AtkDocument* documentStruct, DocumentIF _document)
	{
		foreach ( void delegate(DocumentIF) dlg; _document.onLoadCompleteListeners )
		{
			dlg(_document);
		}
	}

	void delegate(DocumentIF)[] _onLoadStoppedListeners;
	@property void delegate(DocumentIF)[] onLoadStoppedListeners()
	{
		return _onLoadStoppedListeners;
	}
	/**
	 * The 'load-stopped' signal is emitted when a pending load of
	 * document contents is cancelled, paused, or otherwise
	 * interrupted by the user or application logic.  It should not
	 * however be emitted while waiting for a resource (for instance
	 * while blocking on a file or network read) unless a
	 * user-significant timeout has occurred.
	 */
	void addOnLoadStopped(void delegate(DocumentIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "load-stopped" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"load-stopped",
				cast(GCallback)&callBackLoadStopped,
				cast(void*)cast(DocumentIF)this,
				null,
				connectFlags);
			connectedSignals["load-stopped"] = 1;
		}
		_onLoadStoppedListeners ~= dlg;
	}
	extern(C) static void callBackLoadStopped(AtkDocument* documentStruct, DocumentIF _document)
	{
		foreach ( void delegate(DocumentIF) dlg; _document.onLoadStoppedListeners )
		{
			dlg(_document);
		}
	}

	void delegate(int, DocumentIF)[] _onPageChangedListeners;
	@property void delegate(int, DocumentIF)[] onPageChangedListeners()
	{
		return _onPageChangedListeners;
	}
	/**
	 * The 'page-changed' signal is emitted when the current page of
	 * a document changes, e.g. pressing page up/down in a document
	 * viewer.
	 *
	 * Params:
	 *     pageNumber = the new page number. If this value is unknown
	 *         or not applicable, -1 should be provided.
	 *
	 * Since: 2.12
	 */
	void addOnPageChanged(void delegate(int, DocumentIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "page-changed" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"page-changed",
				cast(GCallback)&callBackPageChanged,
				cast(void*)cast(DocumentIF)this,
				null,
				connectFlags);
			connectedSignals["page-changed"] = 1;
		}
		_onPageChangedListeners ~= dlg;
	}
	extern(C) static void callBackPageChanged(AtkDocument* documentStruct, int pageNumber, DocumentIF _document)
	{
		foreach ( void delegate(int, DocumentIF) dlg; _document.onPageChangedListeners )
		{
			dlg(pageNumber, _document);
		}
	}

	void delegate(DocumentIF)[] _onReloadListeners;
	@property void delegate(DocumentIF)[] onReloadListeners()
	{
		return _onReloadListeners;
	}
	/**
	 * The 'reload' signal is emitted when the contents of a
	 * document is refreshed from its source.  Once 'reload' has
	 * been emitted, a matching 'load-complete' or 'load-stopped'
	 * signal should follow, which clients may await before
	 * interrogating ATK for the latest document content.
	 */
	void addOnReload(void delegate(DocumentIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "reload" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"reload",
				cast(GCallback)&callBackReload,
				cast(void*)cast(DocumentIF)this,
				null,
				connectFlags);
			connectedSignals["reload"] = 1;
		}
		_onReloadListeners ~= dlg;
	}
	extern(C) static void callBackReload(AtkDocument* documentStruct, DocumentIF _document)
	{
		foreach ( void delegate(DocumentIF) dlg; _document.onReloadListeners )
		{
			dlg(_document);
		}
	}
}
