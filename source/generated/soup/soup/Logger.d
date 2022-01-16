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


module soup.Logger;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import soup.Session;
private import soup.SessionFeatureIF;
private import soup.SessionFeatureT;
private import soup.c.functions;
public  import soup.c.types;


/** */
public class Logger : ObjectG, SessionFeatureIF
{
	/** the main Gtk struct */
	protected SoupLogger* soupLogger;

	/** Get the main Gtk struct */
	public SoupLogger* getLoggerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupLogger;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupLogger;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupLogger* soupLogger, bool ownedRef = false)
	{
		this.soupLogger = soupLogger;
		super(cast(GObject*)soupLogger, ownedRef);
	}

	// add the SessionFeature capabilities
	mixin SessionFeatureT!(SoupLogger);


	/** */
	public static GType getType()
	{
		return soup_logger_get_type();
	}

	/**
	 * Creates a new #SoupLogger with the given debug level. If @level is
	 * %SOUP_LOGGER_LOG_BODY, @max_body_size gives the maximum number of
	 * bytes of the body that will be logged. (-1 means "no limit".)
	 *
	 * If you need finer control over what message parts are and aren't
	 * logged, use soup_logger_set_request_filter() and
	 * soup_logger_set_response_filter().
	 *
	 * Params:
	 *     level = the debug level
	 *     maxBodySize = the maximum body size to output, or -1
	 *
	 * Returns: a new #SoupLogger
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(SoupLoggerLogLevel level, int maxBodySize)
	{
		auto __p = soup_logger_new(level, maxBodySize);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupLogger*) __p, true);
	}

	/**
	 * Sets @logger to watch @session and print debug information for
	 * its messages.
	 *
	 * (The session will take a reference on @logger, which will be
	 * removed when you call soup_logger_detach(), or when the session is
	 * destroyed.)
	 *
	 * Deprecated: Use soup_session_add_feature() instead.
	 *
	 * Params:
	 *     session = a #SoupSession
	 */
	public void attach(Session session)
	{
		soup_logger_attach(soupLogger, (session is null) ? null : session.getSessionStruct());
	}

	/**
	 * Stops @logger from watching @session.
	 *
	 * Deprecated: Use soup_session_remove_feature() instead.
	 *
	 * Params:
	 *     session = a #SoupSession
	 */
	public void detach(Session session)
	{
		soup_logger_detach(soupLogger, (session is null) ? null : session.getSessionStruct());
	}

	/**
	 * Sets up an alternate log printing routine, if you don't want
	 * the log to go to <literal>stdout</literal>.
	 *
	 * Params:
	 *     printer = the callback for printing logging output
	 *     printerData = data to pass to the callback
	 *     destroy = a #GDestroyNotify to free @printer_data
	 */
	public void setPrinter(SoupLoggerPrinter printer, void* printerData, GDestroyNotify destroy)
	{
		soup_logger_set_printer(soupLogger, printer, printerData, destroy);
	}

	/**
	 * Sets up a filter to determine the log level for a given request.
	 * For each HTTP request @logger will invoke @request_filter to
	 * determine how much (if any) of that request to log. (If you do not
	 * set a request filter, @logger will just always log requests at the
	 * level passed to soup_logger_new().)
	 *
	 * Params:
	 *     requestFilter = the callback for request debugging
	 *     filterData = data to pass to the callback
	 *     destroy = a #GDestroyNotify to free @filter_data
	 */
	public void setRequestFilter(SoupLoggerFilter requestFilter, void* filterData, GDestroyNotify destroy)
	{
		soup_logger_set_request_filter(soupLogger, requestFilter, filterData, destroy);
	}

	/**
	 * Sets up a filter to determine the log level for a given response.
	 * For each HTTP response @logger will invoke @response_filter to
	 * determine how much (if any) of that response to log. (If you do not
	 * set a response filter, @logger will just always log responses at
	 * the level passed to soup_logger_new().)
	 *
	 * Params:
	 *     responseFilter = the callback for response debugging
	 *     filterData = data to pass to the callback
	 *     destroy = a #GDestroyNotify to free @filter_data
	 */
	public void setResponseFilter(SoupLoggerFilter responseFilter, void* filterData, GDestroyNotify destroy)
	{
		soup_logger_set_response_filter(soupLogger, responseFilter, filterData, destroy);
	}
}
