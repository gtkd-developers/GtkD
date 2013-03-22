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
 * inFile  = GSrvTarget.html
 * outPack = gio
 * outFile = SrvTarget
 * strct   = GSrvTarget
 * realStrct=
 * ctorStrct=
 * clss    = SrvTarget
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_srv_target_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * structWrap:
 * 	- GList* -> ListG
 * 	- GSrvTarget* -> SrvTarget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.SrvTarget;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ListG;



private import gobject.Boxed;

/**
 * SRV (service) records are used by some network protocols to provide
 * service-specific aliasing and load-balancing. For example, XMPP
 * (Jabber) uses SRV records to locate the XMPP server for a domain;
 * rather than connecting directly to "example.com" or assuming a
 * specific server hostname like "xmpp.example.com", an XMPP client
 * would look up the "xmpp-client" SRV record for "example.com", and
 * then connect to whatever host was pointed to by that record.
 *
 * You can use g_resolver_lookup_service() or
 * g_resolver_lookup_service_async() to find the GSrvTargets
 * for a given service. However, if you are simply planning to connect
 * to the remote service, you can use GNetworkService's
 * GSocketConnectable interface and not need to worry about
 * GSrvTarget at all.
 */
public class SrvTarget : Boxed
{
	
	/** the main Gtk struct */
	protected GSrvTarget* gSrvTarget;
	
	
	public GSrvTarget* getSrvTargetStruct()
	{
		return gSrvTarget;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gSrvTarget;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GSrvTarget* gSrvTarget)
	{
		this.gSrvTarget = gSrvTarget;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GSrvTarget with the given parameters.
	 * You should not need to use this; normally GSrvTargets are
	 * created by GResolver.
	 * Since 2.22
	 * Params:
	 * hostname = the host that the service is running on
	 * port = the port that the service is running on
	 * priority = the target's priority
	 * weight = the target's weight
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string hostname, ushort port, ushort priority, ushort weight)
	{
		// GSrvTarget * g_srv_target_new (const gchar *hostname,  guint16 port,  guint16 priority,  guint16 weight);
		auto p = g_srv_target_new(Str.toStringz(hostname), port, priority, weight);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_srv_target_new(Str.toStringz(hostname), port, priority, weight)");
		}
		this(cast(GSrvTarget*) p);
	}
	
	/**
	 * Copies target
	 * Since 2.22
	 * Returns: a copy of target
	 */
	public SrvTarget copy()
	{
		// GSrvTarget * g_srv_target_copy (GSrvTarget *target);
		auto p = g_srv_target_copy(gSrvTarget);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SrvTarget)(cast(GSrvTarget*) p);
	}
	
	/**
	 * Frees target
	 * Since 2.22
	 */
	public void free()
	{
		// void g_srv_target_free (GSrvTarget *target);
		g_srv_target_free(gSrvTarget);
	}
	
	/**
	 * Gets target's hostname (in ASCII form; if you are going to present
	 * this to the user, you should use g_hostname_is_ascii_encoded() to
	 * check if it contains encoded Unicode segments, and use
	 * g_hostname_to_unicode() to convert it if it does.)
	 * Since 2.22
	 * Returns: target's hostname
	 */
	public string getHostname()
	{
		// const gchar * g_srv_target_get_hostname (GSrvTarget *target);
		return Str.toString(g_srv_target_get_hostname(gSrvTarget));
	}
	
	/**
	 * Gets target's port
	 * Since 2.22
	 * Returns: target's port
	 */
	public ushort getPort()
	{
		// guint16 g_srv_target_get_port (GSrvTarget *target);
		return g_srv_target_get_port(gSrvTarget);
	}
	
	/**
	 * Gets target's priority. You should not need to look at this;
	 * GResolver already sorts the targets according to the algorithm in
	 * RFC 2782.
	 * Since 2.22
	 * Returns: target's priority
	 */
	public ushort getPriority()
	{
		// guint16 g_srv_target_get_priority (GSrvTarget *target);
		return g_srv_target_get_priority(gSrvTarget);
	}
	
	/**
	 * Gets target's weight. You should not need to look at this;
	 * GResolver already sorts the targets according to the algorithm in
	 * RFC 2782.
	 * Since 2.22
	 * Returns: target's weight
	 */
	public ushort getWeight()
	{
		// guint16 g_srv_target_get_weight (GSrvTarget *target);
		return g_srv_target_get_weight(gSrvTarget);
	}
	
	/**
	 * Sorts targets in place according to the algorithm in RFC 2782.
	 * Since 2.22
	 * Params:
	 * targets = a GList of GSrvTarget
	 * Returns: the head of the sorted list. [transfer full]
	 */
	public static ListG listSort(ListG targets)
	{
		// GList * g_srv_target_list_sort (GList *targets);
		auto p = g_srv_target_list_sort((targets is null) ? null : targets.getListGStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
}
