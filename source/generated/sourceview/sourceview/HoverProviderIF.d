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


module sourceview.HoverProviderIF;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import glib.ErrorG;
private import glib.GException;
private import sourceview.HoverContext;
private import sourceview.HoverDisplay;
private import sourceview.c.functions;
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
public interface HoverProviderIF{
	/** Get the main Gtk struct */
	public GtkSourceHoverProvider* getHoverProviderStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return gtk_source_hover_provider_get_type();
	}

	/** */
	public void populateAsync(HoverContext context, HoverDisplay display, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/** */
	public bool populateFinish(AsyncResultIF result);
}
