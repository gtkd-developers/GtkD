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


module peas.ConfigurableIF;

private import gobject.ObjectG;
private import gtk.Widget;
private import peas.c.functions;
public  import peas.c.types;


/**
 * Interface for configurable plugins.
 */
public interface ConfigurableIF{
	/** Get the main Gtk struct */
	public PeasGtkConfigurable* getConfigurableStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return peas_gtk_configurable_get_type();
	}

	/**
	 * Creates the configure widget for the plugin. The returned widget
	 * should allow configuring all the relevant aspects of the plugin, and should
	 * allow instant-apply, as promoted by the Gnome Human Interface Guidelines.
	 *
	 * #PeasGtkPluginManager will embed the returned widget into a dialog box,
	 * but you shouldn't take this behaviour for granted as other implementations
	 * of a plugin manager UI might do otherwise.
	 *
	 * This method should always return a valid #GtkWidget instance, never %NULL.
	 *
	 * Returns: A #GtkWidget used for configuration.
	 */
	public Widget createConfigureWidget();
}
