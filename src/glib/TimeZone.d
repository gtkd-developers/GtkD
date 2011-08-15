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
 * inFile  = glib-GTimeZone.html
 * outPack = glib
 * outFile = TimeZone
 * strct   = GTimeZone
 * realStrct=
 * ctorStrct=
 * clss    = TimeZone
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_time_zone_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * 	- GTimeZone* -> TimeZone
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.TimeZone;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;




/**
 * Description
 * GTimeZone is a structure that represents a time zone, at no
 * particular point in time. It is refcounted and immutable.
 * GTimeZone is available since GLib 2.26.
 */
public class TimeZone
{
	
	/** the main Gtk struct */
	protected GTimeZone* gTimeZone;
	
	
	public GTimeZone* getTimeZoneStruct()
	{
		return gTimeZone;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gTimeZone;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GTimeZone* gTimeZone)
	{
		if(gTimeZone is null)
		{
			this = null;
			return;
		}
		this.gTimeZone = gTimeZone;
	}
	
	/**
	 */
	
	/**
	 * Decreases the reference count on tz.
	 * Since 2.26
	 */
	public void unref()
	{
		// void g_time_zone_unref (GTimeZone *tz);
		g_time_zone_unref(gTimeZone);
	}
	
	/**
	 * Increases the reference count on tz.
	 * Since 2.26
	 * Returns: a new reference to tz.
	 */
	public TimeZone doref()
	{
		// GTimeZone * g_time_zone_ref (GTimeZone *tz);
		auto p = g_time_zone_ref(gTimeZone);
		if(p is null)
		{
			return null;
		}
		return new TimeZone(cast(GTimeZone*) p);
	}
	
	/**
	 * Creates a GTimeZone corresponding to identifier.
	 * identifier can either be an RFC3339/ISO 8601 time offset or
	 * something that would pass as a valid value for the
	 * TZ environment variable (including NULL).
	 * Valid RFC3339 time offsets are "Z" (for UTC) or
	 * "±hh:mm". ISO 8601 additionally specifies
	 * "±hhmm" and "±hh".
	 * The TZ environment variable typically corresponds
	 * to the name of a file in the zoneinfo database, but there are many
	 * other possibilities. Note that those other possibilities are not
	 * currently implemented, but are planned.
	 * g_time_zone_new_local() calls this function with the value of the
	 * TZ environment variable. This function itself is
	 * independent of the value of TZ, but if identifier
	 * is NULL then /etc/localtime will be consulted
	 * to discover the correct timezone.
	 * See RFC3339
	 * §5.6 for a precise definition of valid RFC3339 time offsets
	 * (the time-offset expansion) and ISO 8601 for the
	 * full list of valid time offsets. See The
	 * GNU C Library manual for an explanation of the possible
	 * values of the TZ environment variable.
	 * You should release the return value by calling g_time_zone_unref()
	 * when you are done with it.
	 * Since 2.26
	 * Params:
	 * identifier = a timezone identifier. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string identifier)
	{
		// GTimeZone * g_time_zone_new (const gchar *identifier);
		auto p = g_time_zone_new(Str.toStringz(identifier));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_time_zone_new(Str.toStringz(identifier))");
		}
		this(cast(GTimeZone*) p);
	}
	
	/**
	 * Creates a GTimeZone corresponding to local time.
	 * This is equivalent to calling g_time_zone_new() with the value of the
	 * TZ environment variable (including the possibility
	 * of NULL). Changes made to TZ after the first
	 * call to this function may or may not be noticed by future calls.
	 * You should release the return value by calling g_time_zone_unref()
	 * when you are done with it.
	 * Since 2.26
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GTimeZone * g_time_zone_new_local (void);
		auto p = g_time_zone_new_local();
		if(p is null)
		{
			throw new ConstructionException("null returned by g_time_zone_new_local()");
		}
		this(cast(GTimeZone*) p);
	}
}
