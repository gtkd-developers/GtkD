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


module gio.Resolver;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.InetAddress;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * #GResolver provides cancellable synchronous and asynchronous DNS
 * resolution, for hostnames (g_resolver_lookup_by_address(),
 * g_resolver_lookup_by_name() and their async variants) and SRV
 * (service) records (g_resolver_lookup_service()).
 * 
 * #GNetworkAddress and #GNetworkService provide wrappers around
 * #GResolver functionality that also implement #GSocketConnectable,
 * making it easy to connect to a remote host/service.
 */
public class Resolver : ObjectG
{
	/** the main Gtk struct */
	protected GResolver* gResolver;

	/** Get the main Gtk struct */
	public GResolver* getResolverStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gResolver;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gResolver;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GResolver* gResolver, bool ownedRef = false)
	{
		this.gResolver = gResolver;
		super(cast(GObject*)gResolver, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_resolver_get_type();
	}

	/**
	 * Frees @addresses (which should be the return value from
	 * g_resolver_lookup_by_name() or g_resolver_lookup_by_name_finish()).
	 * (This is a convenience method; you can also simply free the results
	 * by hand.)
	 *
	 * Params:
	 *     addresses = a #GList of #GInetAddress
	 *
	 * Since: 2.22
	 */
	public static void freeAddresses(ListG addresses)
	{
		g_resolver_free_addresses((addresses is null) ? null : addresses.getListGStruct());
	}

	/**
	 * Frees @targets (which should be the return value from
	 * g_resolver_lookup_service() or g_resolver_lookup_service_finish()).
	 * (This is a convenience method; you can also simply free the
	 * results by hand.)
	 *
	 * Params:
	 *     targets = a #GList of #GSrvTarget
	 *
	 * Since: 2.22
	 */
	public static void freeTargets(ListG targets)
	{
		g_resolver_free_targets((targets is null) ? null : targets.getListGStruct());
	}

	/**
	 * Gets the default #GResolver. You should unref it when you are done
	 * with it. #GResolver may use its reference count as a hint about how
	 * many threads it should allocate for concurrent DNS resolutions.
	 *
	 * Returns: the default #GResolver.
	 *
	 * Since: 2.22
	 */
	public static Resolver getDefault()
	{
		auto __p = g_resolver_get_default();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Resolver)(cast(GResolver*) __p, true);
	}

	/**
	 * Synchronously reverse-resolves @address to determine its
	 * associated hostname.
	 *
	 * If the DNS resolution fails, @error (if non-%NULL) will be set to
	 * a value from #GResolverError.
	 *
	 * If @cancellable is non-%NULL, it can be used to cancel the
	 * operation, in which case @error (if non-%NULL) will be set to
	 * %G_IO_ERROR_CANCELLED.
	 *
	 * Params:
	 *     address = the address to reverse-resolve
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: a hostname (either ASCII-only, or in ASCII-encoded
	 *     form), or %NULL on error.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public string lookupByAddress(InetAddress address, Cancellable cancellable)
	{
		GError* err = null;

		auto retStr = g_resolver_lookup_by_address(gResolver, (address is null) ? null : address.getInetAddressStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Begins asynchronously reverse-resolving @address to determine its
	 * associated hostname, and eventually calls @callback, which must
	 * call g_resolver_lookup_by_address_finish() to get the final result.
	 *
	 * Params:
	 *     address = the address to reverse-resolve
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = callback to call after resolution completes
	 *     userData = data for @callback
	 *
	 * Since: 2.22
	 */
	public void lookupByAddressAsync(InetAddress address, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_resolver_lookup_by_address_async(gResolver, (address is null) ? null : address.getInetAddressStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Retrieves the result of a previous call to
	 * g_resolver_lookup_by_address_async().
	 *
	 * If the DNS resolution failed, @error (if non-%NULL) will be set to
	 * a value from #GResolverError. If the operation was cancelled,
	 * @error will be set to %G_IO_ERROR_CANCELLED.
	 *
	 * Params:
	 *     result = the result passed to your #GAsyncReadyCallback
	 *
	 * Returns: a hostname (either ASCII-only, or in ASCII-encoded
	 *     form), or %NULL on error.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public string lookupByAddressFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto retStr = g_resolver_lookup_by_address_finish(gResolver, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Synchronously resolves @hostname to determine its associated IP
	 * address(es). @hostname may be an ASCII-only or UTF-8 hostname, or
	 * the textual form of an IP address (in which case this just becomes
	 * a wrapper around g_inet_address_new_from_string()).
	 *
	 * On success, g_resolver_lookup_by_name() will return a non-empty #GList of
	 * #GInetAddress, sorted in order of preference and guaranteed to not
	 * contain duplicates. That is, if using the result to connect to
	 * @hostname, you should attempt to connect to the first address
	 * first, then the second if the first fails, etc. If you are using
	 * the result to listen on a socket, it is appropriate to add each
	 * result using e.g. g_socket_listener_add_address().
	 *
	 * If the DNS resolution fails, @error (if non-%NULL) will be set to a
	 * value from #GResolverError and %NULL will be returned.
	 *
	 * If @cancellable is non-%NULL, it can be used to cancel the
	 * operation, in which case @error (if non-%NULL) will be set to
	 * %G_IO_ERROR_CANCELLED.
	 *
	 * If you are planning to connect to a socket on the resolved IP
	 * address, it may be easier to create a #GNetworkAddress and use its
	 * #GSocketConnectable interface.
	 *
	 * Params:
	 *     hostname = the hostname to look up
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: a non-empty #GList
	 *     of #GInetAddress, or %NULL on error. You
	 *     must unref each of the addresses and free the list when you are
	 *     done with it. (You can use g_resolver_free_addresses() to do this.)
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public ListG lookupByName(string hostname, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_resolver_lookup_by_name(gResolver, Str.toStringz(hostname), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Begins asynchronously resolving @hostname to determine its
	 * associated IP address(es), and eventually calls @callback, which
	 * must call g_resolver_lookup_by_name_finish() to get the result.
	 * See g_resolver_lookup_by_name() for more details.
	 *
	 * Params:
	 *     hostname = the hostname to look up the address of
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = callback to call after resolution completes
	 *     userData = data for @callback
	 *
	 * Since: 2.22
	 */
	public void lookupByNameAsync(string hostname, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_resolver_lookup_by_name_async(gResolver, Str.toStringz(hostname), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Retrieves the result of a call to
	 * g_resolver_lookup_by_name_async().
	 *
	 * If the DNS resolution failed, @error (if non-%NULL) will be set to
	 * a value from #GResolverError. If the operation was cancelled,
	 * @error will be set to %G_IO_ERROR_CANCELLED.
	 *
	 * Params:
	 *     result = the result passed to your #GAsyncReadyCallback
	 *
	 * Returns: a #GList
	 *     of #GInetAddress, or %NULL on error. See g_resolver_lookup_by_name()
	 *     for more details.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public ListG lookupByNameFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_resolver_lookup_by_name_finish(gResolver, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * This differs from g_resolver_lookup_by_name() in that you can modify
	 * the lookup behavior with @flags. For example this can be used to limit
	 * results with %G_RESOLVER_NAME_LOOKUP_FLAGS_IPV4_ONLY.
	 *
	 * Params:
	 *     hostname = the hostname to look up
	 *     flags = extra #GResolverNameLookupFlags for the lookup
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: a non-empty #GList
	 *     of #GInetAddress, or %NULL on error. You
	 *     must unref each of the addresses and free the list when you are
	 *     done with it. (You can use g_resolver_free_addresses() to do this.)
	 *
	 * Since: 2.60
	 *
	 * Throws: GException on failure.
	 */
	public ListG lookupByNameWithFlags(string hostname, GResolverNameLookupFlags flags, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_resolver_lookup_by_name_with_flags(gResolver, Str.toStringz(hostname), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Begins asynchronously resolving @hostname to determine its
	 * associated IP address(es), and eventually calls @callback, which
	 * must call g_resolver_lookup_by_name_with_flags_finish() to get the result.
	 * See g_resolver_lookup_by_name() for more details.
	 *
	 * Params:
	 *     hostname = the hostname to look up the address of
	 *     flags = extra #GResolverNameLookupFlags for the lookup
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = callback to call after resolution completes
	 *     userData = data for @callback
	 *
	 * Since: 2.60
	 */
	public void lookupByNameWithFlagsAsync(string hostname, GResolverNameLookupFlags flags, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_resolver_lookup_by_name_with_flags_async(gResolver, Str.toStringz(hostname), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Retrieves the result of a call to
	 * g_resolver_lookup_by_name_with_flags_async().
	 *
	 * If the DNS resolution failed, @error (if non-%NULL) will be set to
	 * a value from #GResolverError. If the operation was cancelled,
	 * @error will be set to %G_IO_ERROR_CANCELLED.
	 *
	 * Params:
	 *     result = the result passed to your #GAsyncReadyCallback
	 *
	 * Returns: a #GList
	 *     of #GInetAddress, or %NULL on error. See g_resolver_lookup_by_name()
	 *     for more details.
	 *
	 * Since: 2.60
	 *
	 * Throws: GException on failure.
	 */
	public ListG lookupByNameWithFlagsFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_resolver_lookup_by_name_with_flags_finish(gResolver, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Synchronously performs a DNS record lookup for the given @rrname and returns
	 * a list of records as #GVariant tuples. See #GResolverRecordType for
	 * information on what the records contain for each @record_type.
	 *
	 * If the DNS resolution fails, @error (if non-%NULL) will be set to
	 * a value from #GResolverError and %NULL will be returned.
	 *
	 * If @cancellable is non-%NULL, it can be used to cancel the
	 * operation, in which case @error (if non-%NULL) will be set to
	 * %G_IO_ERROR_CANCELLED.
	 *
	 * Params:
	 *     rrname = the DNS name to look up the record for
	 *     recordType = the type of DNS record to look up
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: a non-empty #GList of
	 *     #GVariant, or %NULL on error. You must free each of the records and the list
	 *     when you are done with it. (You can use g_list_free_full() with
	 *     g_variant_unref() to do this.)
	 *
	 * Since: 2.34
	 *
	 * Throws: GException on failure.
	 */
	public ListG lookupRecords(string rrname, GResolverRecordType recordType, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_resolver_lookup_records(gResolver, Str.toStringz(rrname), recordType, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Begins asynchronously performing a DNS lookup for the given
	 * @rrname, and eventually calls @callback, which must call
	 * g_resolver_lookup_records_finish() to get the final result. See
	 * g_resolver_lookup_records() for more details.
	 *
	 * Params:
	 *     rrname = the DNS name to look up the record for
	 *     recordType = the type of DNS record to look up
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = callback to call after resolution completes
	 *     userData = data for @callback
	 *
	 * Since: 2.34
	 */
	public void lookupRecordsAsync(string rrname, GResolverRecordType recordType, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_resolver_lookup_records_async(gResolver, Str.toStringz(rrname), recordType, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Retrieves the result of a previous call to
	 * g_resolver_lookup_records_async(). Returns a non-empty list of records as
	 * #GVariant tuples. See #GResolverRecordType for information on what the
	 * records contain.
	 *
	 * If the DNS resolution failed, @error (if non-%NULL) will be set to
	 * a value from #GResolverError. If the operation was cancelled,
	 * @error will be set to %G_IO_ERROR_CANCELLED.
	 *
	 * Params:
	 *     result = the result passed to your #GAsyncReadyCallback
	 *
	 * Returns: a non-empty #GList of
	 *     #GVariant, or %NULL on error. You must free each of the records and the list
	 *     when you are done with it. (You can use g_list_free_full() with
	 *     g_variant_unref() to do this.)
	 *
	 * Since: 2.34
	 *
	 * Throws: GException on failure.
	 */
	public ListG lookupRecordsFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_resolver_lookup_records_finish(gResolver, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Synchronously performs a DNS SRV lookup for the given @service and
	 * @protocol in the given @domain and returns an array of #GSrvTarget.
	 * @domain may be an ASCII-only or UTF-8 hostname. Note also that the
	 * @service and @protocol arguments do not include the leading underscore
	 * that appears in the actual DNS entry.
	 *
	 * On success, g_resolver_lookup_service() will return a non-empty #GList of
	 * #GSrvTarget, sorted in order of preference. (That is, you should
	 * attempt to connect to the first target first, then the second if
	 * the first fails, etc.)
	 *
	 * If the DNS resolution fails, @error (if non-%NULL) will be set to
	 * a value from #GResolverError and %NULL will be returned.
	 *
	 * If @cancellable is non-%NULL, it can be used to cancel the
	 * operation, in which case @error (if non-%NULL) will be set to
	 * %G_IO_ERROR_CANCELLED.
	 *
	 * If you are planning to connect to the service, it is usually easier
	 * to create a #GNetworkService and use its #GSocketConnectable
	 * interface.
	 *
	 * Params:
	 *     service = the service type to look up (eg, "ldap")
	 *     protocol = the networking protocol to use for @service (eg, "tcp")
	 *     domain = the DNS domain to look up the service in
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: a non-empty #GList of
	 *     #GSrvTarget, or %NULL on error. You must free each of the targets and the
	 *     list when you are done with it. (You can use g_resolver_free_targets() to do
	 *     this.)
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public ListG lookupService(string service, string protocol, string domain, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_resolver_lookup_service(gResolver, Str.toStringz(service), Str.toStringz(protocol), Str.toStringz(domain), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Begins asynchronously performing a DNS SRV lookup for the given
	 * @service and @protocol in the given @domain, and eventually calls
	 * @callback, which must call g_resolver_lookup_service_finish() to
	 * get the final result. See g_resolver_lookup_service() for more
	 * details.
	 *
	 * Params:
	 *     service = the service type to look up (eg, "ldap")
	 *     protocol = the networking protocol to use for @service (eg, "tcp")
	 *     domain = the DNS domain to look up the service in
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = callback to call after resolution completes
	 *     userData = data for @callback
	 *
	 * Since: 2.22
	 */
	public void lookupServiceAsync(string service, string protocol, string domain, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_resolver_lookup_service_async(gResolver, Str.toStringz(service), Str.toStringz(protocol), Str.toStringz(domain), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Retrieves the result of a previous call to
	 * g_resolver_lookup_service_async().
	 *
	 * If the DNS resolution failed, @error (if non-%NULL) will be set to
	 * a value from #GResolverError. If the operation was cancelled,
	 * @error will be set to %G_IO_ERROR_CANCELLED.
	 *
	 * Params:
	 *     result = the result passed to your #GAsyncReadyCallback
	 *
	 * Returns: a non-empty #GList of
	 *     #GSrvTarget, or %NULL on error. See g_resolver_lookup_service() for more
	 *     details.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public ListG lookupServiceFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_resolver_lookup_service_finish(gResolver, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Sets @resolver to be the application's default resolver (reffing
	 * @resolver, and unreffing the previous default resolver, if any).
	 * Future calls to g_resolver_get_default() will return this resolver.
	 *
	 * This can be used if an application wants to perform any sort of DNS
	 * caching or "pinning"; it can implement its own #GResolver that
	 * calls the original default resolver for DNS operations, and
	 * implements its own cache policies on top of that, and then set
	 * itself as the default resolver for all later code to use.
	 *
	 * Since: 2.22
	 */
	public void setDefault()
	{
		g_resolver_set_default(gResolver);
	}

	/**
	 * Emitted when the resolver notices that the system resolver
	 * configuration has changed.
	 */
	gulong addOnReload(void delegate(Resolver) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "reload", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
