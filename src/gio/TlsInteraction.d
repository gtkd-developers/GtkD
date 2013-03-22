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
 * inFile  = GTlsInteraction.html
 * outPack = gio
 * outFile = TlsInteraction
 * strct   = GTlsInteraction
 * realStrct=
 * ctorStrct=
 * clss    = TlsInteraction
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_tls_interaction_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * 	- gio.TlsPassword
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GCancellable* -> Cancellable
 * 	- GTlsPassword* -> TlsPassword
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.TlsInteraction;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.ErrorG;
private import glib.GException;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.TlsPassword;



private import gobject.ObjectG;

/**
 * GTlsInteraction provides a mechanism for the TLS connection and database
 * code to interact with the user. It can be used to ask the user for passwords.
 *
 * To use a GTlsInteraction with a TLS connection use
 * g_tls_connection_set_interaction().
 *
 * Callers should instantiate a derived class that implements the various
 * interaction methods to show the required dialogs.
 *
 * Callers should use the 'invoke' functions like
 * g_tls_interaction_invoke_ask_password() to run interaction methods. These
 * functions make sure that the interaction is invoked in the main loop
 * and not in the current thread, if the current thread is not running the
 * main loop.
 *
 * Derived classes can choose to implement whichever interactions methods they'd
 * like to support by overriding those virtual methods in their class
 * initialization function. Any interactions not implemented will return
 * G_TLS_INTERACTION_UNHANDLED. If a derived class implements an async method,
 * it must also implement the corresponding finish method.
 */
public class TlsInteraction : ObjectG
{
	
	/** the main Gtk struct */
	protected GTlsInteraction* gTlsInteraction;
	
	
	public GTlsInteraction* getTlsInteractionStruct()
	{
		return gTlsInteraction;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gTlsInteraction;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GTlsInteraction* gTlsInteraction)
	{
		super(cast(GObject*)gTlsInteraction);
		this.gTlsInteraction = gTlsInteraction;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gTlsInteraction = cast(GTlsInteraction*)obj;
	}
	
	/**
	 */
	
	/**
	 * Run synchronous interaction to ask the user for a password. In general,
	 * g_tls_interaction_invoke_ask_password() should be used instead of this
	 * function.
	 * Derived subclasses usually implement a password prompt, although they may
	 * also choose to provide a password from elsewhere. The password value will
	 * be filled in and then callback will be called. Alternatively the user may
	 * abort this password request, which will usually abort the TLS connection.
	 * If the interaction is cancelled by the cancellation object, or by the
	 * user then G_TLS_INTERACTION_FAILED will be returned with an error that
	 * contains a G_IO_ERROR_CANCELLED error code. Certain implementations may
	 * not support immediate cancellation.
	 * Since 2.30
	 * Params:
	 * password = a GTlsPassword object
	 * cancellable = an optional GCancellable cancellation object
	 * Returns: The status of the ask password interaction.
	 * Throws: GException on failure.
	 */
	public GTlsInteractionResult askPassword(TlsPassword password, Cancellable cancellable)
	{
		// GTlsInteractionResult g_tls_interaction_ask_password (GTlsInteraction *interaction,  GTlsPassword *password,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_tls_interaction_ask_password(gTlsInteraction, (password is null) ? null : password.getTlsPasswordStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Run asynchronous interaction to ask the user for a password. In general,
	 * g_tls_interaction_invoke_ask_password() should be used instead of this
	 * function.
	 * Derived subclasses usually implement a password prompt, although they may
	 * also choose to provide a password from elsewhere. The password value will
	 * be filled in and then callback will be called. Alternatively the user may
	 * abort this password request, which will usually abort the TLS connection.
	 * If the interaction is cancelled by the cancellation object, or by the
	 * user then G_TLS_INTERACTION_FAILED will be returned with an error that
	 * contains a G_IO_ERROR_CANCELLED error code. Certain implementations may
	 * not support immediate cancellation.
	 * Certain implementations may not support immediate cancellation.
	 * Since 2.30
	 * Params:
	 * password = a GTlsPassword object
	 * cancellable = an optional GCancellable cancellation object
	 * callback = will be called when the interaction completes. [allow-none]
	 * userData = data to pass to the callback. [allow-none]
	 */
	public void askPasswordAsync(TlsPassword password, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_tls_interaction_ask_password_async  (GTlsInteraction *interaction,  GTlsPassword *password,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_tls_interaction_ask_password_async(gTlsInteraction, (password is null) ? null : password.getTlsPasswordStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Complete an ask password user interaction request. This should be once
	 * the g_tls_interaction_ask_password_async() completion callback is called.
	 * If G_TLS_INTERACTION_HANDLED is returned, then the GTlsPassword passed
	 * to g_tls_interaction_ask_password() will have its password filled in.
	 * If the interaction is cancelled by the cancellation object, or by the
	 * user then G_TLS_INTERACTION_FAILED will be returned with an error that
	 * contains a G_IO_ERROR_CANCELLED error code.
	 * Since 2.30
	 * Params:
	 * result = the result passed to the callback
	 * Returns: The status of the ask password interaction.
	 * Throws: GException on failure.
	 */
	public GTlsInteractionResult askPasswordFinish(AsyncResultIF result)
	{
		// GTlsInteractionResult g_tls_interaction_ask_password_finish  (GTlsInteraction *interaction,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_tls_interaction_ask_password_finish(gTlsInteraction, (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Invoke the interaction to ask the user for a password. It invokes this
	 * interaction in the main loop, specifically the GMainContext returned by
	 * g_main_context_get_thread_default() when the interaction is created. This
	 * is called by called by GTlsConnection or GTlsDatabase to ask the user
	 * for a password.
	 * Derived subclasses usually implement a password prompt, although they may
	 * also choose to provide a password from elsewhere. The password value will
	 * be filled in and then callback will be called. Alternatively the user may
	 * abort this password request, which will usually abort the TLS connection.
	 * The implementation can either be a synchronous (eg: modal dialog) or an
	 * asynchronous one (eg: modeless dialog). This function will take care of
	 * calling which ever one correctly.
	 * If the interaction is cancelled by the cancellation object, or by the
	 * user then G_TLS_INTERACTION_FAILED will be returned with an error that
	 * contains a G_IO_ERROR_CANCELLED error code. Certain implementations may
	 * not support immediate cancellation.
	 * Since 2.30
	 * Params:
	 * password = a GTlsPassword object
	 * cancellable = an optional GCancellable cancellation object
	 * Returns: The status of the ask password interaction.
	 * Throws: GException on failure.
	 */
	public GTlsInteractionResult invokeAskPassword(TlsPassword password, Cancellable cancellable)
	{
		// GTlsInteractionResult g_tls_interaction_invoke_ask_password  (GTlsInteraction *interaction,  GTlsPassword *password,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_tls_interaction_invoke_ask_password(gTlsInteraction, (password is null) ? null : password.getTlsPasswordStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
}
