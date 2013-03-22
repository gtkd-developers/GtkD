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
 * inFile  = GResolver.html
 * outPack = gio
 * outFile = Resolver
 * strct   = GResolver
 * realStrct=
 * ctorStrct=
 * clss    = Resolver
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_resolver_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.ListG
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GCancellable* -> Cancellable
 * 	- GList* -> ListG
 * 	- GResolver* -> Resolver
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.Resolver;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import gio.AsyncResultIF;
private import gio.Cancellable;



private import gobject.ObjectG;

/**
 * GResolver provides cancellable synchronous and asynchronous DNS
 * resolution, for hostnames (g_resolver_lookup_by_address(),
 * g_resolver_lookup_by_name() and their async variants) and SRV
 * (service) records (g_resolver_lookup_service()).
 *
 * GNetworkAddress and GNetworkService provide wrappers around
 * GResolver functionality that also implement GSocketConnectable,
 * making it easy to connect to a remote host/service.
 */
public class Resolver : ObjectG
{
	
	/** the main Gtk struct */
	protected GResolver* gResolver;
	
	
	public GResolver* getResolverStruct()
	{
		return gResolver;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gResolver;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GResolver* gResolver)
	{
		super(cast(GObject*)gResolver);
		this.gResolver = gResolver;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gResolver = cast(GResolver*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Resolver)[] onReloadListeners;
	/**
	 * Emitted when the resolver notices that the system resolver
	 * configuration has changed.
	 */
	void addOnReload(void delegate(Resolver) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackReload(GResolver* resolverStruct, Resolver _resolver)
	{
		foreach ( void delegate(Resolver) dlg ; _resolver.onReloadListeners )
		{
			dlg(_resolver);
		}
	}
	
	
	/**
	 * Gets the default GResolver. You should unref it when you are done
	 * with it. GResolver may use its reference count as a hint about how
	 * many threads it should allocate for concurrent DNS resolutions.
	 * Since 2.22
	 * Returns: the default GResolver. [transfer full]
	 */
	public static Resolver getDefault()
	{
		// GResolver * g_resolver_get_default (void);
		auto p = g_resolver_get_default();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Resolver)(cast(GResolver*) p);
	}
	
	/**
	 * Sets resolver to be the application's default resolver (reffing
	 * resolver, and unreffing the previous default resolver, if any).
	 * Future calls to g_resolver_get_default() will return this resolver.
	 * This can be used if an application wants to perform any sort of DNS
	 * caching or "pinning"; it can implement its own GResolver that
	 * calls the original default resolver for DNS operations, and
	 * implements its own cache policies on top of that, and then set
	 * itself as the default resolver for all later code to use.
	 * Since 2.22
	 */
	public void setDefault()
	{
		// void g_resolver_set_default (GResolver *resolver);
		g_resolver_set_default(gResolver);
	}
	
	/**
	 * Synchronously resolves hostname to determine its associated IP
	 * address(es). hostname may be an ASCII-only or UTF-8 hostname, or
	 * the textual form of an IP address (in which case this just becomes
	 * a wrapper around g_inet_address_new_from_string()).
	 * On success, g_resolver_lookup_by_name() will return a GList of
	 * GInetAddress, sorted in order of preference and guaranteed to not
	 * contain duplicates. That is, if using the result to connect to
	 * hostname, you should attempt to connect to the first address
	 * first, then the second if the first fails, etc. If you are using
	 * the result to listen on a socket, it is appropriate to add each
	 * result using e.g. g_socket_listener_add_address().
	 * If the DNS resolution fails, error (if non-NULL) will be set to a
	 * value from GResolverError.
	 * If cancellable is non-NULL, it can be used to cancel the
	 * operation, in which case error (if non-NULL) will be set to
	 * G_IO_ERROR_CANCELLED.
	 * If you are planning to connect to a socket on the resolved IP
	 * address, it may be easier to create a GNetworkAddress and use its
	 * GSocketConnectable interface.
	 * Since 2.22
	 * Params:
	 * hostname = the hostname to look up
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * Returns: a GList of GInetAddress, or NULL on error. You must unref each of the addresses and free the list when you are done with it. (You can use g_resolver_free_addresses() to do this.). [element-type GInetAddress][transfer full]
	 * Throws: GException on failure.
	 */
	public ListG lookupByName(string hostname, Cancellable cancellable)
	{
		// GList * g_resolver_lookup_by_name (GResolver *resolver,  const gchar *hostname,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_resolver_lookup_by_name(gResolver, Str.toStringz(hostname), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Begins asynchronously resolving hostname to determine its
	 * associated IP address(es), and eventually calls callback, which
	 * must call g_resolver_lookup_by_name_finish() to get the result.
	 * See g_resolver_lookup_by_name() for more details.
	 * Since 2.22
	 * Params:
	 * hostname = the hostname to look up the address of
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * callback = callback to call after resolution completes. [scope async]
	 * userData = data for callback. [closure]
	 */
	public void lookupByNameAsync(string hostname, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_resolver_lookup_by_name_async (GResolver *resolver,  const gchar *hostname,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_resolver_lookup_by_name_async(gResolver, Str.toStringz(hostname), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Retrieves the result of a call to
	 * g_resolver_lookup_by_name_async().
	 * If the DNS resolution failed, error (if non-NULL) will be set to
	 * a value from GResolverError. If the operation was cancelled,
	 * error will be set to G_IO_ERROR_CANCELLED.
	 * Since 2.22
	 * Params:
	 * result = the result passed to your GAsyncReadyCallback
	 * Returns: a GList of GInetAddress, or NULL on error. See g_resolver_lookup_by_name() for more details. [element-type GInetAddress][transfer full]
	 * Throws: GException on failure.
	 */
	public ListG lookupByNameFinish(AsyncResultIF result)
	{
		// GList * g_resolver_lookup_by_name_finish (GResolver *resolver,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_resolver_lookup_by_name_finish(gResolver, (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Frees addresses (which should be the return value from
	 * g_resolver_lookup_by_name() or g_resolver_lookup_by_name_finish()).
	 * (This is a convenience method; you can also simply free the results
	 * by hand.)
	 * Since 2.22
	 * Params:
	 * addresses = a GList of GInetAddress
	 */
	public static void freeAddresses(ListG addresses)
	{
		// void g_resolver_free_addresses (GList *addresses);
		g_resolver_free_addresses((addresses is null) ? null : addresses.getListGStruct());
	}
	
	/**
	 * Synchronously reverse-resolves address to determine its
	 * associated hostname.
	 * If the DNS resolution fails, error (if non-NULL) will be set to
	 * a value from GResolverError.
	 * If cancellable is non-NULL, it can be used to cancel the
	 * operation, in which case error (if non-NULL) will be set to
	 * G_IO_ERROR_CANCELLED.
	 * Since 2.22
	 * Params:
	 * address = the address to reverse-resolve
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * Returns: a hostname (either ASCII-only, or in ASCII-encoded form), or NULL on error.
	 * Throws: GException on failure.
	 */
	public string lookupByAddress(GInetAddress* address, Cancellable cancellable)
	{
		// gchar * g_resolver_lookup_by_address (GResolver *resolver,  GInetAddress *address,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_resolver_lookup_by_address(gResolver, address, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return Str.toString(p);
	}
	
	/**
	 * Begins asynchronously reverse-resolving address to determine its
	 * associated hostname, and eventually calls callback, which must
	 * call g_resolver_lookup_by_address_finish() to get the final result.
	 * Since 2.22
	 * Params:
	 * address = the address to reverse-resolve
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * callback = callback to call after resolution completes. [scope async]
	 * userData = data for callback. [closure]
	 */
	public void lookupByAddressAsync(GInetAddress* address, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_resolver_lookup_by_address_async (GResolver *resolver,  GInetAddress *address,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_resolver_lookup_by_address_async(gResolver, address, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Retrieves the result of a previous call to
	 * g_resolver_lookup_by_address_async().
	 * If the DNS resolution failed, error (if non-NULL) will be set to
	 * a value from GResolverError. If the operation was cancelled,
	 * error will be set to G_IO_ERROR_CANCELLED.
	 * Since 2.22
	 * Params:
	 * result = the result passed to your GAsyncReadyCallback
	 * Returns: a hostname (either ASCII-only, or in ASCII-encoded form), or NULL on error.
	 * Throws: GException on failure.
	 */
	public string lookupByAddressFinish(AsyncResultIF result)
	{
		// gchar * g_resolver_lookup_by_address_finish (GResolver *resolver,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_resolver_lookup_by_address_finish(gResolver, (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return Str.toString(p);
	}
	
	/**
	 * Synchronously performs a DNS SRV lookup for the given service and
	 * protocol in the given domain and returns an array of GSrvTarget.
	 * domain may be an ASCII-only or UTF-8 hostname. Note also that the
	 * service and protocol arguments do not
	 * include the leading underscore that appears in the actual DNS
	 * entry.
	 * On success, g_resolver_lookup_service() will return a GList of
	 * GSrvTarget, sorted in order of preference. (That is, you should
	 * attempt to connect to the first target first, then the second if
	 * the first fails, etc.)
	 * If the DNS resolution fails, error (if non-NULL) will be set to
	 * a value from GResolverError.
	 * If cancellable is non-NULL, it can be used to cancel the
	 * operation, in which case error (if non-NULL) will be set to
	 * G_IO_ERROR_CANCELLED.
	 * If you are planning to connect to the service, it is usually easier
	 * to create a GNetworkService and use its GSocketConnectable
	 * interface.
	 * Since 2.22
	 * Params:
	 * service = the service type to look up (eg, "ldap")
	 * protocol = the networking protocol to use for service (eg, "tcp")
	 * domain = the DNS domain to look up the service in
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * Returns: a GList of GSrvTarget, or NULL on error. You must free each of the targets and the list when you are done with it. (You can use g_resolver_free_targets() to do this.). [element-type GSrvTarget][transfer full]
	 * Throws: GException on failure.
	 */
	public ListG lookupService(string service, string protocol, string domain, Cancellable cancellable)
	{
		// GList * g_resolver_lookup_service (GResolver *resolver,  const gchar *service,  const gchar *protocol,  const gchar *domain,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_resolver_lookup_service(gResolver, Str.toStringz(service), Str.toStringz(protocol), Str.toStringz(domain), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Begins asynchronously performing a DNS SRV lookup for the given
	 * service and protocol in the given domain, and eventually calls
	 * callback, which must call g_resolver_lookup_service_finish() to
	 * get the final result. See g_resolver_lookup_service() for more
	 * details.
	 * Since 2.22
	 * Params:
	 * service = the service type to look up (eg, "ldap")
	 * protocol = the networking protocol to use for service (eg, "tcp")
	 * domain = the DNS domain to look up the service in
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * callback = callback to call after resolution completes. [scope async]
	 * userData = data for callback. [closure]
	 */
	public void lookupServiceAsync(string service, string protocol, string domain, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_resolver_lookup_service_async (GResolver *resolver,  const gchar *service,  const gchar *protocol,  const gchar *domain,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_resolver_lookup_service_async(gResolver, Str.toStringz(service), Str.toStringz(protocol), Str.toStringz(domain), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Retrieves the result of a previous call to
	 * g_resolver_lookup_service_async().
	 * If the DNS resolution failed, error (if non-NULL) will be set to
	 * a value from GResolverError. If the operation was cancelled,
	 * error will be set to G_IO_ERROR_CANCELLED.
	 * Since 2.22
	 * Params:
	 * result = the result passed to your GAsyncReadyCallback
	 * Returns: a GList of GSrvTarget, or NULL on error. See g_resolver_lookup_service() for more details. [element-type GSrvTarget][transfer full]
	 * Throws: GException on failure.
	 */
	public ListG lookupServiceFinish(AsyncResultIF result)
	{
		// GList * g_resolver_lookup_service_finish (GResolver *resolver,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_resolver_lookup_service_finish(gResolver, (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Frees targets (which should be the return value from
	 * g_resolver_lookup_service() or g_resolver_lookup_service_finish()).
	 * (This is a convenience method; you can also simply free the
	 * results by hand.)
	 * Since 2.22
	 * Params:
	 * targets = a GList of GSrvTarget
	 */
	public static void freeTargets(ListG targets)
	{
		// void g_resolver_free_targets (GList *targets);
		g_resolver_free_targets((targets is null) ? null : targets.getListGStruct());
	}
	
	/**
	 * Synchronously performs a DNS record lookup for the given rrname and returns
	 * a list of records as GVariant tuples. See GResolverRecordType for
	 * information on what the records contain for each record_type.
	 * If the DNS resolution fails, error (if non-NULL) will be set to
	 * a value from GResolverError.
	 * If cancellable is non-NULL, it can be used to cancel the
	 * operation, in which case error (if non-NULL) will be set to
	 * G_IO_ERROR_CANCELLED.
	 * Since 2.34
	 * Params:
	 * rrname = the DNS name to lookup the record for
	 * recordType = the type of DNS record to lookup
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * Returns: a GList of GVariant, or NULL on error. You must free each of the records and the list when you are done with it. (You can use g_list_free_full() with g_variant_unref() to do this.). [element-type GVariant][transfer full]
	 * Throws: GException on failure.
	 */
	public ListG lookupRecords(string rrname, GResolverRecordType recordType, Cancellable cancellable)
	{
		// GList * g_resolver_lookup_records (GResolver *resolver,  const gchar *rrname,  GResolverRecordType record_type,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_resolver_lookup_records(gResolver, Str.toStringz(rrname), recordType, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Begins asynchronously performing a DNS lookup for the given
	 * rrname, and eventually calls callback, which must call
	 * g_resolver_lookup_records_finish() to get the final result. See
	 * g_resolver_lookup_records() for more details.
	 * Since 2.34
	 * Params:
	 * rrname = the DNS name to lookup the record for
	 * recordType = the type of DNS record to lookup
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * callback = callback to call after resolution completes. [scope async]
	 * userData = data for callback. [closure]
	 */
	public void lookupRecordsAsync(string rrname, GResolverRecordType recordType, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_resolver_lookup_records_async (GResolver *resolver,  const gchar *rrname,  GResolverRecordType record_type,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_resolver_lookup_records_async(gResolver, Str.toStringz(rrname), recordType, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Retrieves the result of a previous call to
	 * g_resolver_lookup_records_async(). Returns a list of records as GVariant
	 * tuples. See GResolverRecordType for information on what the records contain.
	 * If the DNS resolution failed, error (if non-NULL) will be set to
	 * a value from GResolverError. If the operation was cancelled,
	 * error will be set to G_IO_ERROR_CANCELLED.
	 * Since 2.34
	 * Params:
	 * result = the result passed to your GAsyncReadyCallback
	 * Returns: a GList of GVariant, or NULL on error. You must free each of the records and the list when you are done with it. (You can use g_list_free_full() with g_variant_unref() to do this.). [element-type GVariant][transfer full]
	 * Throws: GException on failure.
	 */
	public ListG lookupRecordsFinish(AsyncResultIF result)
	{
		// GList * g_resolver_lookup_records_finish (GResolver *resolver,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_resolver_lookup_records_finish(gResolver, (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
}
