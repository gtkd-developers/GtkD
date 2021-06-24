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


module atk.DocumentIF;

private import atk.c.functions;
public  import atk.c.types;
private import glib.Str;
private import glib.c.functions;
private import gobject.Signals;
private import std.algorithm;


/**
 * The AtkDocument interface should be supported by any object whose
 * content is a representation or view of a document.  The AtkDocument
 * interface should appear on the toplevel container for the document
 * content; however AtkDocument instances may be nested (i.e. an
 * AtkDocument may be a descendant of another AtkDocument) in those
 * cases where one document contains "embedded content" which can
 * reasonably be considered a document in its own right.
 */
public interface DocumentIF{
	/** Get the main Gtk struct */
	public AtkDocument* getDocumentStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return atk_document_get_type();
	}

	/**
	 * Retrieves the value of the given @attribute_name inside @document.
	 *
	 * Params:
	 *     attributeName = a character string representing the name of the attribute
	 *         whose value is being queried.
	 *
	 * Returns: a string value associated with the named
	 *     attribute for this document, or %NULL if a value for
	 *     @attribute_name has not been specified for this document.
	 *
	 * Since: 1.12
	 */
	public string getAttributeValue(string attributeName);

	/**
	 * Gets an AtkAttributeSet which describes document-wide
	 * attributes as name-value pairs.
	 *
	 * Returns: An AtkAttributeSet containing the explicitly
	 *     set name-value-pair attributes associated with this document
	 *     as a whole.
	 *
	 * Since: 1.12
	 */
	public AtkAttributeSet* getAttributes();

	/**
	 * Retrieves the current page number inside @document.
	 *
	 * Returns: the current page number inside @document, or -1 if
	 *     not implemented, not know by the implementor, or irrelevant.
	 *
	 * Since: 2.12
	 */
	public int getCurrentPageNumber();

	/**
	 * Gets a %gpointer that points to an instance of the DOM.  It is
	 * up to the caller to check atk_document_get_type to determine
	 * how to cast this pointer.
	 *
	 * Deprecated: Since 2.12. @document is already a representation of
	 * the document. Use it directly, or one of its children, as an
	 * instance of the DOM.
	 *
	 * Returns: a %gpointer that points to an instance of the DOM.
	 */
	public void* getDocument();

	/**
	 * Gets a string indicating the document type.
	 *
	 * Deprecated: Since 2.12. Please use atk_document_get_attributes() to
	 * ask for the document type if it applies.
	 *
	 * Returns: a string indicating the document type
	 */
	public string getDocumentType();

	/**
	 * Gets a UTF-8 string indicating the POSIX-style LC_MESSAGES locale
	 * of the content of this document instance.  Individual
	 * text substrings or images within this document may have
	 * a different locale, see atk_text_get_attributes and
	 * atk_image_get_image_locale.
	 *
	 * Deprecated: Please use atk_object_get_object_locale() instead.
	 *
	 * Returns: a UTF-8 string indicating the POSIX-style LC_MESSAGES
	 *     locale of the document content as a whole, or NULL if
	 *     the document content does not specify a locale.
	 */
	public string getLocale();

	/**
	 * Retrieves the total number of pages inside @document.
	 *
	 * Returns: total page count of @document, or -1 if not implemented,
	 *     not know by the implementor or irrelevant.
	 *
	 * Since: 2.12
	 */
	public int getPageCount();

	/**
	 * Sets the value for the given @attribute_name inside @document.
	 *
	 * Params:
	 *     attributeName = a character string representing the name of the attribute
	 *         whose value is being set.
	 *     attributeValue = a string value to be associated with @attribute_name.
	 *
	 * Returns: %TRUE if @attribute_value is successfully associated
	 *     with @attribute_name for this @document, and %FALSE if if the
	 *     document does not allow the attribute to be modified
	 *
	 * Since: 1.12
	 */
	public bool setAttributeValue(string attributeName, string attributeValue);

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
	gulong addOnLoadComplete(void delegate(DocumentIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	/**
	 * The 'load-stopped' signal is emitted when a pending load of
	 * document contents is cancelled, paused, or otherwise
	 * interrupted by the user or application logic.  It should not
	 * however be emitted while waiting for a resource (for instance
	 * while blocking on a file or network read) unless a
	 * user-significant timeout has occurred.
	 */
	gulong addOnLoadStopped(void delegate(DocumentIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

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
	gulong addOnPageChanged(void delegate(int, DocumentIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

	/**
	 * The 'reload' signal is emitted when the contents of a
	 * document is refreshed from its source.  Once 'reload' has
	 * been emitted, a matching 'load-complete' or 'load-stopped'
	 * signal should follow, which clients may await before
	 * interrogating ATK for the latest document content.
	 */
	gulong addOnReload(void delegate(DocumentIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
}
