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
public  import std.algorithm;


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

	protected class OnLoadCompleteDelegateWrapper
	{
		void delegate(DocumentIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(DocumentIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnLoadCompleteDelegateWrapper[] onLoadCompleteListeners;

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
	gulong addOnLoadComplete(void delegate(DocumentIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onLoadCompleteListeners ~= new OnLoadCompleteDelegateWrapper(dlg, 0, connectFlags);
		onLoadCompleteListeners[onLoadCompleteListeners.length - 1].handlerId = Signals.connectData(
			this,
			"load-complete",
			cast(GCallback)&callBackLoadComplete,
			cast(void*)onLoadCompleteListeners[onLoadCompleteListeners.length - 1],
			cast(GClosureNotify)&callBackLoadCompleteDestroy,
			connectFlags);
		return onLoadCompleteListeners[onLoadCompleteListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackLoadComplete(AtkDocument* documentStruct,OnLoadCompleteDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackLoadCompleteDestroy(OnLoadCompleteDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnLoadComplete(wrapper);
	}

	protected void internalRemoveOnLoadComplete(OnLoadCompleteDelegateWrapper source)
	{
		foreach(index, wrapper; onLoadCompleteListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onLoadCompleteListeners[index] = null;
				onLoadCompleteListeners = std.algorithm.remove(onLoadCompleteListeners, index);
				break;
			}
		}
	}
	

	protected class OnLoadStoppedDelegateWrapper
	{
		void delegate(DocumentIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(DocumentIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnLoadStoppedDelegateWrapper[] onLoadStoppedListeners;

	/**
	 * The 'load-stopped' signal is emitted when a pending load of
	 * document contents is cancelled, paused, or otherwise
	 * interrupted by the user or application logic.  It should not
	 * however be emitted while waiting for a resource (for instance
	 * while blocking on a file or network read) unless a
	 * user-significant timeout has occurred.
	 */
	gulong addOnLoadStopped(void delegate(DocumentIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onLoadStoppedListeners ~= new OnLoadStoppedDelegateWrapper(dlg, 0, connectFlags);
		onLoadStoppedListeners[onLoadStoppedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"load-stopped",
			cast(GCallback)&callBackLoadStopped,
			cast(void*)onLoadStoppedListeners[onLoadStoppedListeners.length - 1],
			cast(GClosureNotify)&callBackLoadStoppedDestroy,
			connectFlags);
		return onLoadStoppedListeners[onLoadStoppedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackLoadStopped(AtkDocument* documentStruct,OnLoadStoppedDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackLoadStoppedDestroy(OnLoadStoppedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnLoadStopped(wrapper);
	}

	protected void internalRemoveOnLoadStopped(OnLoadStoppedDelegateWrapper source)
	{
		foreach(index, wrapper; onLoadStoppedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onLoadStoppedListeners[index] = null;
				onLoadStoppedListeners = std.algorithm.remove(onLoadStoppedListeners, index);
				break;
			}
		}
	}
	

	protected class OnPageChangedDelegateWrapper
	{
		void delegate(int, DocumentIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(int, DocumentIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnPageChangedDelegateWrapper[] onPageChangedListeners;

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
	gulong addOnPageChanged(void delegate(int, DocumentIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onPageChangedListeners ~= new OnPageChangedDelegateWrapper(dlg, 0, connectFlags);
		onPageChangedListeners[onPageChangedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"page-changed",
			cast(GCallback)&callBackPageChanged,
			cast(void*)onPageChangedListeners[onPageChangedListeners.length - 1],
			cast(GClosureNotify)&callBackPageChangedDestroy,
			connectFlags);
		return onPageChangedListeners[onPageChangedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackPageChanged(AtkDocument* documentStruct, int pageNumber,OnPageChangedDelegateWrapper wrapper)
	{
		wrapper.dlg(pageNumber, wrapper.outer);
	}
	
	extern(C) static void callBackPageChangedDestroy(OnPageChangedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnPageChanged(wrapper);
	}

	protected void internalRemoveOnPageChanged(OnPageChangedDelegateWrapper source)
	{
		foreach(index, wrapper; onPageChangedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onPageChangedListeners[index] = null;
				onPageChangedListeners = std.algorithm.remove(onPageChangedListeners, index);
				break;
			}
		}
	}
	

	protected class OnReloadDelegateWrapper
	{
		void delegate(DocumentIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(DocumentIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnReloadDelegateWrapper[] onReloadListeners;

	/**
	 * The 'reload' signal is emitted when the contents of a
	 * document is refreshed from its source.  Once 'reload' has
	 * been emitted, a matching 'load-complete' or 'load-stopped'
	 * signal should follow, which clients may await before
	 * interrogating ATK for the latest document content.
	 */
	gulong addOnReload(void delegate(DocumentIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onReloadListeners ~= new OnReloadDelegateWrapper(dlg, 0, connectFlags);
		onReloadListeners[onReloadListeners.length - 1].handlerId = Signals.connectData(
			this,
			"reload",
			cast(GCallback)&callBackReload,
			cast(void*)onReloadListeners[onReloadListeners.length - 1],
			cast(GClosureNotify)&callBackReloadDestroy,
			connectFlags);
		return onReloadListeners[onReloadListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackReload(AtkDocument* documentStruct,OnReloadDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackReloadDestroy(OnReloadDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnReload(wrapper);
	}

	protected void internalRemoveOnReload(OnReloadDelegateWrapper source)
	{
		foreach(index, wrapper; onReloadListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onReloadListeners[index] = null;
				onReloadListeners = std.algorithm.remove(onReloadListeners, index);
				break;
			}
		}
	}
	
}
