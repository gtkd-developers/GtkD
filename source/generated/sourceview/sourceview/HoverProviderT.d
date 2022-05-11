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


module sourceview.HoverProviderT;

public  import gio.AsyncResultIF;
public  import gio.Cancellable;
public  import glib.ErrorG;
public  import glib.GException;
public  import sourceview.HoverContext;
public  import sourceview.HoverDisplay;
public  import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * Interface to populate interactive tooltips.
 * 
 * `GtkSourceHoverProvider` is an interface that should be implemented to extend
 * the contents of a [class@HoverDisplay]. This is typical in editors that
 * interact external tooling such as those utilizing Language Server Protocol.
 * 
 * If you can populate the [class@HoverDisplay] synchronously, use
 * [vfunc@HoverProvider.populate]. Otherwise, interface implementations that
 * may take additional time should use [vfunc@HoverProvider.populate_async]
 * to avoid blocking the main loop.
 */
public template HoverProviderT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkSourceHoverProvider* getHoverProviderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GtkSourceHoverProvider*)getStruct();
	}


	/** */
	public void populateAsync(HoverContext context, HoverDisplay display, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		gtk_source_hover_provider_populate_async(getHoverProviderStruct(), (context is null) ? null : context.getHoverContextStruct(), (display is null) ? null : display.getHoverDisplayStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/** */
	public bool populateFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = gtk_source_hover_provider_populate_finish(getHoverProviderStruct(), (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
