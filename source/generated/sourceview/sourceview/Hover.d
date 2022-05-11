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


module sourceview.Hover;

private import gobject.ObjectG;
private import sourceview.HoverProviderIF;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * Interactive tooltips.
 * 
 * `GtkSourceHover` allows a [class@View] to provide contextual information.
 * When enabled, if the user hovers over a word in the text editor, a series
 * of registered [iface@HoverProvider] can populate a [class@HoverDisplay]
 * with useful information.
 * 
 * To enable call [method@View.get_hover] and add [iface@HoverProvider]
 * using [method@Hover.add_provider]. To disable, remove all registered
 * providers with [method@Hover.remove_provider].
 * 
 * You can change how long to wait to display the interactive tooltip by
 * setting the [property@Hover:hover-delay] property in milliseconds.
 */
public class Hover : ObjectG
{
	/** the main Gtk struct */
	protected GtkSourceHover* gtkSourceHover;

	/** Get the main Gtk struct */
	public GtkSourceHover* getHoverStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSourceHover;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSourceHover;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSourceHover* gtkSourceHover, bool ownedRef = false)
	{
		this.gtkSourceHover = gtkSourceHover;
		super(cast(GObject*)gtkSourceHover, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_source_hover_get_type();
	}

	/** */
	public void addProvider(HoverProviderIF provider)
	{
		gtk_source_hover_add_provider(gtkSourceHover, (provider is null) ? null : provider.getHoverProviderStruct());
	}

	/** */
	public void removeProvider(HoverProviderIF provider)
	{
		gtk_source_hover_remove_provider(gtkSourceHover, (provider is null) ? null : provider.getHoverProviderStruct());
	}
}
